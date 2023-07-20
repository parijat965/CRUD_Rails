class ProductsController < ApplicationController
 
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    @products= Product.new
  end
  
  def create
    @products = Product.new(product_params)
    if @products.save
      redirect_to @products
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @products = Product.find(params[:id])
  end
  
  def update
    @products = Product.find(params[:id])
    @products.update(product_params)
    redirect_to products_path

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  
  def product_params
    params.require(:product).permit(:name,:price)
  end

end

