class Vendor < ActiveRecord::Base
  belongs_to :market
  has_many :products
  has_many :sales

  def total_all_sales
    all_sales = self.sales

    total = 0
    all_sales.each do |sale|
      total += sale.amount
    end
    return total
  end

  def current_month_sales
    all_sales = self.sales

    all_sales.where(amount: 8382) #returns a collection of sales from the current month
  end

  def current_month_sales_total
    total = 0

    current_month_sales.each do |sale|
      total += sale.amount
    end
    return total
  end
end
