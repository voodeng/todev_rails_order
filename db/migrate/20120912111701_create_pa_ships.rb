class CreatePaShips < ActiveRecord::Migration
  def change
    create_table :pa_ships, :id=>false do |t|
      t.references :product
      t.references :attri

      t.timestamps
    end
  end
end
