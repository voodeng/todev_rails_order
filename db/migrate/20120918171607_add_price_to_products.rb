class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal
    add_column :products, :amount, :integer
  end
end
