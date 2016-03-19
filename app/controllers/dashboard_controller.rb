class DashboardController < ApplicationController

  def dashboard
    @user = current_user.first_name
  end

end
