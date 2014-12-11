class AccountsController < ApplicationController
	before_action :authenticate_user!
	before_filter :set_user, only: [:show, :edit, :update]

  def show
  	respond_to do |format|
      format.html { @user }
      format.json { render json: @user.to_json(include: [:user]) }
    end
  end

  def edit
  	if @user
  		render
  	else
  		redirect_to account_path, notice: "Sorry, profile not found!"
  	end
  end

  def update
  	if @user.update(user_params)
  		render js: "swal('Update!', 'Your profile has been successfully update!', 'success');"
  	else
  		render 'edit'
  	end
  end

  private

  def set_user
  	@user = current_user
  end

  def user_params
  	params.require(:user).permit(:login, :email, profile_attributes: [
  		:full_name, :address1, :address2, :city, :postcode, :state, :country, :phone_number]
  	)
  end
end
