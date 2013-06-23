class AddNamesToCouples < ActiveRecord::Migration
  def change
    add_column :couples, :username, :string
    add_column :couples, :his_name, :string
    add_column :couples, :her_name, :string
  end
end
