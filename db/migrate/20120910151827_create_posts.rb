class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :desc
      t.references :user
      t.string :thum
      t.text :body
      t.boolean :isbanner

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
