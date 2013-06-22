class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.string :url
      t.integer :numbers

      t.timestamps
    end
  end
end
