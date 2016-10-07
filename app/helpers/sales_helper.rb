module SalesHelper
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
