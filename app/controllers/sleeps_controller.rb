class SleepsController < ApplicationController
  before_action :set_sleep, only: [:show, :destroy]

  def index
    @sleeps = Sleep.all
    @user = User.first
  end

  def show
  end

  def new
    @sleep = Sleep.new
  end

  def create
    @sleep = Sleep.new(sleep_params)
    if @sleep.save
      redirect_to sleeps_path
    else
      render "new"
    end
  end

  def destroy
    if @sleep.destroy
      render text: "Successfully deleted step count!", status: 200
    end
  end


  private

  def set_sleep
    @sleep = Sleep.find(params[:id])
  end

  def sleep_params
    params.require(:sleep).permit(:start_time, :end_time, :date, :user_id)
  end

end
