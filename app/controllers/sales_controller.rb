class SalesController < ApplicationController

  def index
    @vendor = Vendor.find(params[:vendor_id])
    @sales = @vendor.sales

    @total_sales = @vendor.total_all_sales

    @this_month_sales = @vendor.current_month_sales

    @this_month_sales_total = @vendor.current_month_sales_total
  end
end
