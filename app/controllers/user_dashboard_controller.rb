class UserDashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # User-specific logic here
  end
end
