module Admin
  class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin

    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_user_path(@user), notice: 'User was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def authorize_admin
      redirect_to root_path, alert: "Access Denied!" unless current_user.admin?
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end
  end
end
