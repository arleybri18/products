class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Producto creado con exito"
    else
      render :new, alert: "No fue posible crear el producto"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.save
      redirect_to products_path, notice: "Producto creado con exito"
    else
      render :edit, alert: "No fue posible actualizar el producto"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to product_path, notice: "Producto eliminado con exito"
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :category_ids => [])
  end

end
