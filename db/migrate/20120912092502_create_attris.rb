class CreateAttris < ActiveRecord::Migration
  def change
    create_table :attris do |t|
      t.string :name

      t.timestamps
    end
  end
end
