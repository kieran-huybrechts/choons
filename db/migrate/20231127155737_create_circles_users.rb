class CreateCirclesUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :circles_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :circle, null: false, foreign_key: true
      t.boolean :is_admin

      t.timestamps
    end
  end
end
