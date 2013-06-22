class AddCoupleIdToUserLike < ActiveRecord::Migration
  def change
    add_column :user_likes, :couple_id, :integer
  end
end
