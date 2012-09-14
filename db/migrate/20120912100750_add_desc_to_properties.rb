class AddDescToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :pdesc, :string
  end
end
