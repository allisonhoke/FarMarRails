class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.integer :id
      t.string :name
      t.integer :number_employees
      t.belongs_to :market, index:true
      # t.integer :market_id

      t.timestamps null: false
    end
  end
end
