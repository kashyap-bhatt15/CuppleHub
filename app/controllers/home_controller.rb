class HomeController < ApplicationController
  def index
  end
  def show
    @couple = Couple.find(params[:id])
  end
  def modal1
  end
  def splash
  end
end
