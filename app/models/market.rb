class Market < ActiveRecord::Base
  has_many :vendors

  def all_vendors
    self.vendors #returns a list of the vendors for a specific market
  end
end
