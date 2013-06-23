class CouplesController < ApplicationController
  def index
    @couples = Couple.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @couples }
    end
  end

  def show
    @couple = Couple.find(params[:id])
  end

  def new
    @couple = Couple.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @couple }
    end
  end

  def edit
    @couple = Couple.find(params[:id])

    respond_to do |format|
      if @couple.save
        format.html { redirect_to @couple, notice: 'Check out your matches!' }
        format.json { render json: @couple, status: :created, location: @couple }
      else
        format.html { render action: "new" }
        format.json { render json: @couple.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @couple = Couple.new(params[:couple])

    respond_to do |format|
      if @couple.save
        format.html { redirect_to couples_path, notice: 'Check out your matches!' }
        format.json { render json: @couple, status: :created, location: @couple }
      else
        format.html { render action: "new" }
        format.json { render json: @couple.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @couple = Couple.find(params[:id])

    respond_to do |format|
      if @couple.update_attributes(params[:couple])
        format.html { redirect_to couples_path, notice: 'Nice update, maybe you have new matches!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @couple.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @couple = Couple.find(params[:id])
    @couple.destroy

    respond_to do |format|
      format.html { redirect_to couples_url }
      format.json { head :no_content }
    end
  end
end
