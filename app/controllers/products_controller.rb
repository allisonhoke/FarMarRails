class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @product.save
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
  @product = Product.new(product_params).update
    if @product.update
  redirect_to @product
    else
  render 'edit'
    end
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :vendor_id)
  end
end
