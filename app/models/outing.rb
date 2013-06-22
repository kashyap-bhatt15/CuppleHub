class Outing < ActiveRecord::Base
  attr_accessible :address, :lat, :long, :name, :price
end
