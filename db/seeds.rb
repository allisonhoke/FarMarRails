# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


markets = []

CSV.read(../seed_csvs/markets.csv).each do |line|
  market = {
    id: line[0].to_i,
    name: line[1],
    address: line[2],
    city: line[3],
    county: line[4],
    state: line[5],
    zip: line[6]
  }

  markets << market
end

markets.each |market_hash|
  Market.create(market_hash)
end

vendors = []

CSV.read(../seed_csvs/vendors.csv).each do |line|
  vendor = {
    id: line[0].to_i,
    name: line[1],
    num_employees: line[2].to_i,
    market_id: line[3].to_i
  }

  vendors << vendor
end

vendors.each do |vendor_hash|
  Vendor.create(vendor_hash)
end

products = []

CSV.read(../seed_csvs/products.csv).each do |line|
  product = {
    id: line[0].to_i,
    name: line[1],
    vendor_id: line[2].to_i
  }
