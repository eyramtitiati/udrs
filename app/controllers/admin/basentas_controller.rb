module Admin
  class BasentasController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin

    def index
      @basentas = Basenta.all
    end

    def show
      @basenta = Basenta.find(params[:id])
    end

    def new
      @basenta = Basenta.new
    end

    def create
      @basenta = Basenta.new(basenta_params)
      if @basenta.save
        redirect_to admin_basenta_path(@basenta), notice: 'Basenta was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def authorize_admin
      redirect_to root_path, alert: "Access Denied!" unless current_user.admin?
    end

    def basenta_params
      params.require(:basenta).permit(:name, :location, :contact_person)
    end
  end
end
