class MarketController < ApplicationController

  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = @market.all_vendors
  end

  def new

  end
end
