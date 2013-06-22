class UserLike < ActiveRecord::Base
  attr_accessible :athletic, :culture, :food, :nightlife, :outdoors, :shop, :travel

  belongs_to :couple
end
