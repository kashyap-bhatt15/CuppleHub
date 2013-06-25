class HomeController < ApplicationController
  def index
  end
  def show
  end
  def modal1
  end
  def splash
    @email = Email.new
  end
  def profile
    respond_to do |format|
      format.html
      format.js {render :couple_data}
    end
  end
  def thanks
  end
end
