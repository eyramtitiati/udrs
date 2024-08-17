class AdminDashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin

  def index
    @total_new_converts = NewConvert.count
    @total_basentas = Basenta.count
    @total_users = User.count
  end

  private

  def authorize_admin
    redirect_to root_path, alert: "Access Denied!" unless current_user.admin?
  end
end
