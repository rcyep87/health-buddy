class WeathersController < ApplicationController

  def index
    @user_forecast = current_user.forecast
  end

end
