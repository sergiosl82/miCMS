class ArticulosController < ApplicationController
  def create
    @articulo = Articulo.new(articulo_params)

    if @articulo.save
      redirect_to @articulo
    else
      render 'new'
    end
  end

  def new
    @articulo = Articulo.new
  end

  def index
  end

  def show
    render @articulo
  end
  def update
  end
  def destroy
  end

  private
  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido)
  end

end
