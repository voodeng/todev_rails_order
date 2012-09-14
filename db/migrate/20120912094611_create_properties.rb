class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.references :attri
      t.string :name

      t.timestamps
    end
    add_index :properties, :attri_id
  end
end
