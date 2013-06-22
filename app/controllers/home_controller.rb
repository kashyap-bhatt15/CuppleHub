class HomeController < ApplicationController
  def index
  end
  def show
    @couple = Couple.find(1)
  end
  
  def modal1
  end
end
