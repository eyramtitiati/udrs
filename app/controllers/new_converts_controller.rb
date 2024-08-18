class NewConvertsController < ApplicationController
  before_action :set_layout

  def index
    @new_converts = NewConvert.all
  end

  def new
    @new_convert = NewConvert.new
  end

  def create
    @new_convert = NewConvert.new(new_convert_params)
    if @new_convert.save
      redirect_to new_convert_path(@new_convert), notice: 'New Convert was successfully registered.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @new_convert = NewConvert.find(params[:id])
  end

  private

  # Use the application layout only for admins, otherwise use the public layout
  def set_layout
    if user_signed_in? && current_user.admin?
      self.class.layout 'application'
    else
      self.class.layout 'public'
    end
  end

  # Other private methods for your controller (like set_existing_inviter and new_convert_params)
  def set_existing_inviter
    if params[:inviter_name].present? || params[:inviter_contact].present?
      existing_inviter = NewConvert.find_by(inviter_name: params[:inviter_name], inviter_contact: params[:inviter_contact])
      if existing_inviter
        @new_convert ||= NewConvert.new
        @new_convert.inviter_name = existing_inviter.inviter_name
        @new_convert.inviter_contact = existing_inviter.inviter_contact
      end
    end
  end

  def new_convert_params
    params.require(:new_convert).permit(
      :first_name, :last_name, :gender, :date_of_birth, :contact_number_1, :contact_number_2,
      :house_number, :landmark, :area, :city, 
      :other_contact_name, :other_contact_number, :other_contact_relationship, 
      :inviter_name, :inviter_contact, :basenta_id
    )
  end
end
