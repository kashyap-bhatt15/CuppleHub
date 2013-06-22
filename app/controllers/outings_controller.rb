class OutingsController < ApplicationController
  def index
    @outings = Outing.all
  end
  def show
    @outing = Outing.find(params[:id])
  end
  def edit
    @outing = Outing.find(params[:id])
  end
  def new
    @outing = Outing.new
  end
  def create
    @outing = Outing.new(params[:outing])

    respond_to do |format|
      if @outing.save
        format.html { redirect_to @outing, notice: 'outing was successfully created.' }
        format.json { render json: @outing, status: :created, location: @outing }
      else
        format.html { render action: "new" }
        format.json { render json: @outing.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @outing = Outing.find(params[:id])

    respond_to do |format|
      if @outing.update_attributes(params[:outing])
        format.html { redirect_to @outing, notice: 'outing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @outing.errors, status: :unprocessable_entity }
      end
    end
  end
  def delete
    @outing = Outing.find(params[:id])
    @outing.destroy

    respond_to do |format|
      format.html { redirect_to outings_url }
      format.json { head :no_content }
    end
  end
end
