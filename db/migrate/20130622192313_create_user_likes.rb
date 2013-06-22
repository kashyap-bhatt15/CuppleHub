class CreateUserLikes < ActiveRecord::Migration
  def change
    create_table :user_likes do |t|
      t.integer :nightlife
      t.integer :food
      t.integer :outdoors
      t.integer :athletic
      t.integer :shop
      t.integer :travel
      t.integer :culture

      t.timestamps
    end
  end
end
