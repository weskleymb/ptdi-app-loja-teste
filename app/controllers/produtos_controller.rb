class ProdutosController < ApplicationController

  def index
    @produtos = Produto.order(preco: :desc).limit(5)
    @produto_menor_preco = Produto.order(:preco).limit(1)
  end

  def create
    produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    Produto.create produto
    redirect_to produtos_path
  end

  def update
    id = params[:id]
    @produto = Produto.find id
    dados_form = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
    if @produto.update dados_form
      redirect_to produtos_path
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @produto = Produto.find id
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to produtos_path
  end

end
