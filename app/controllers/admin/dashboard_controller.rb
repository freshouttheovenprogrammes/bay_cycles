class Admin::DashboardController < Admin::BaseController

  def show
    @user = current_user
  end

end
