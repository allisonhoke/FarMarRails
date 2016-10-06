class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @vendors = @market.vendors
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)

    if @market.save
      redirect_to markets_path
    else
      render :new
    end
  end

  def edit
    @market = Market.find(params[:id])
  end

  def view
    @markets = Market.all
  end

  def details
    @market = Market.find(params[:id])
    @vendors = @market.vendors
  end
  private

  def market_params
    params.require(:market).permit(:name, :address, :city, :county, :state, :zip)
  end
end
