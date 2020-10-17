class TipoContatosController < ApplicationController
  before_action :set_tipo_contato, only: [:show, :edit, :update, :destroy]


  def index
    @tipo_contatos = TipoContato.all
  end

  def show
  end

  def new
    @tipo_contato = TipoContato.new
  end

  def edit
  end

  def create
    @tipo_contato = TipoContato.new(tipo_contato_params)

    respond_to do |format|
      if @tipo_contato.save
        format.html { redirect_to @tipo_contato, notice: 'Tipo de contato criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_contato }
      else
        format.html { render :new }
        format.json { render json: @tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tipo_contato.update(tipo_contato_params)
        format.html { redirect_to @tipo_contato, notice: 'Tipo de contato atualizado com sucesso..' }
        format.json { render :show, status: :ok, location: @tipo_contato }
      else
        format.html { render :edit }
        format.json { render json: @tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tipo_contato.destroy
    respond_to do |format|
      format.html { redirect_to tipo_contatos_url, notice: 'Tipo de contato deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Uso de tetornos para compartilhar configurações ou restrições comuns entre as funções.
    def set_tipo_contato
      @tipo_contato = TipoContato.find(params[:id])
    end

    # parâmetros permitidos pelo request
    def tipo_contato_params
      params.require(:tipo_contato).permit(:nome)
    end
end