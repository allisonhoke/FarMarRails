class VendorsController < ApplicationController

  def index
    @vendor = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor.save
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to @vendor
    else
      render :new
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id]).destroy
    redirect_to vendors_path
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to @vendor

    end
  end


  private

  def vendor_params
    params.require(:vendor).permit(:id, :name, :number_employees, :market_id)
  end
end
