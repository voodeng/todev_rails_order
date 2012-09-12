class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles, :id => false do |t|
      t.references :user
      t.string :slug
      t.boolean :girl
      t.text :body
      t.string :website

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
