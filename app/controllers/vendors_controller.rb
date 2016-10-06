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
      render 'new'
    end
  end

  private

  def Vendor_params
    params.require(:vendor).permit(:id, :name, :number_employees, :market_id)
  end
end
