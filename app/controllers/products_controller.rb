class ProductsController < ApplicationController

  def index
    @product = Product.all

    @vendor = Vendor.find(params[:vendor_id])
    @individual_products = @vendor.products
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
  @product = Product.find(params[:id])
    if @product.update(vendor_params)
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
