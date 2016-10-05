class VendorsController < ApplicationController
  def index
    @Vendors = Vendors.all
  end

  def show
    @Vendor = Vendor.find(params[:id])
    @s = @Vendor.all_s
  end

  def new
    @Vendor = Vendor.new
  end

  def create
    @Vendor = Vendor.new(Vendor_params)

    if @Vendor.save
  end

  private

  def Vendor_params
    params.require(:Vendor).permit(:name, :employees, :market_id)
  end
end

end
