class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.string :name
      t.integer :price
      t.integer :count

      t.references :user, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
