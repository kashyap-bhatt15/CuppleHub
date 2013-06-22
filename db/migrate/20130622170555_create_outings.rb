class CreateOutings < ActiveRecord::Migration
  def change
    create_table :outings do |t|
      t.integer :price
      t.string :name
      t.string :address
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
