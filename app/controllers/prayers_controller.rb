class PrayersController < ApplicationController
  before_action :set_prayer, only: [:show, :destroy]

  def index
    @prayers = Prayer.all
  end

  def show
  end

  def new
    @prayer = Prayer.new
  end

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      redirect_to prayers_path
    else
      render :new
    end
  end

  def destroy
    @prayer.destroy
    redirect_to prayers_path
  end

  private

  def set_prayer
    @prayer = Prayer.find(params[:id])
  end

  def prayer_params
    params.require(:prayer).permit(:name, :pray, :photo)
  end
end
