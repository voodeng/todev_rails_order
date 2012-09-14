class CreateProitems < ActiveRecord::Migration
  def change
    create_table :proitems do |t|
      t.references :product
      t.string :someline

      t.timestamps
    end
    add_index :proitems, :product_id
  end
end
