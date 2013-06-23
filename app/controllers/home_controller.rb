class HomeController < ApplicationController
  def index
  end
  def show
  end
  def modal1
  end
  
  def splash
  end
  
  def profile
    respond_to do |format|
      format.html
      format.js
    end
  end
  def get_couple
    @couple = Couple.find(params[:id])
  end
end
