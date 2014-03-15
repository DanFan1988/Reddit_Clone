class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :sub_id
      t.integer :author_id
      t.string :title
      t.string :url
      t.string :body

      t.timestamps
    end
  end
end
