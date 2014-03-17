class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :author_id
      t.integer :parent_comment_id
      t.string :body
      
      t.timestamps
    end
  end
end
