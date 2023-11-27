class CreatePostsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :posts_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.boolean :is_creator

      t.timestamps
    end
  end
end
