class ContatoPessoasController < ApplicationController
  before_action :set_contato_pessoa, only: [:show, :edit, :update, :destroy]
  before_action :select_tipo_contato_opcoes, only: [:new, :create, :edit, :update]
  before_action :select_pessoa_opcoes, only: [:new, :create, :edit, :update]
  
  def index
    @contato_pessoas = ContatoPessoa.all
  end

  def show
  end

  def new
    @contato_pessoa = ContatoPessoa.new
  end

  def edit
  end

  def create
    @contato_pessoa = ContatoPessoa.new(contato_pessoa_params)

    respond_to do |format|
      if @contato_pessoa.save
        format.html { redirect_to @contato_pessoa, notice: 'Contato criado com sucesso.' }
        format.json { render :show, status: :created, location: @contato_pessoa }
      else
        format.html { render :new }
        format.json { render json: @contato_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @contato_pessoa.update(contato_pessoa_params)
        format.html { redirect_to @contato_pessoa, notice: 'Contato editado com sucesso' }
        format.json { render :show, status: :ok, location: @contato_pessoa }
      else
        format.html { render :edit }
        format.json { render json: @contato_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contato_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to contato_pessoas_url, notice: 'Contato deletado com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    def select_tipo_contato_opcoes
      @tipo_contato_opcoes = TipoContato.all.pluck(:nome, :id)      
    end

    def select_pessoa_opcoes
      @pessoa_opcoes = Pessoa.all.pluck(:nome, :id)      
    end    

    # Use callbacks to share common setup or constraints between actions.
    def set_contato_pessoa
      @contato_pessoa = ContatoPessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contato_pessoa_params
      params.require(:contato_pessoa).permit(:contato, :tipo_contato_id, :pessoa_id)
    end

end
