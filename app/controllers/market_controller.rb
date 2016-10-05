class MarketController < ApplicationController

  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = @market.all_vendors
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)

    if @market.save
  end

  private

  def market_params
    params.require(:market).permit(:name, :address, :city, :county, :state, :zip)
  end
end
