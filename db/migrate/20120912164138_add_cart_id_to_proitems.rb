class AddCartIdToProitems < ActiveRecord::Migration
  def change
    add_column :proitems, :cart_id, :integer
  end
end
