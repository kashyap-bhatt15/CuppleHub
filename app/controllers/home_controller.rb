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
      format.js {render :couple_data}
    end
  end
end
