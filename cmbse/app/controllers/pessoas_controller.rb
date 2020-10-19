class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]
  before_action :select_tipo_contato_opcoes, only: [:new, :create, :edit, :update]

  def index
    @pessoas = Pessoa.all
  end

  def new
    @pessoa = Pessoa.new
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: 'Pessoa criada com sucesso.' }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: 'Pessoa atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
  end

  def show
    @pessoas = Pessoa.order(:id).includes(:contato_pessoas)
  end

  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: 'Pessoa deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
  def select_tipo_contato_opcoes
    @tipo_contato_opcoes = TipoContato.all.pluck(:nome, :id)      
  end

  def set_pessoa
    @pessoa = Pessoa.find(params[:id])
  end

  def pessoa_params
    params.require(:pessoa).permit(:nome, :sobrenome,
      contato_pessoas_attributes: [
        :id, :contato, :pessoa_id, :tipo_contato_id, :_destroy
      ]    
    )
  end

end
