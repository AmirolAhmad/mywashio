class AccountsController < ApplicationController
	before_action :authenticate_user!
	before_filter :set_user, only: [:show, :edit, :update]

  def show
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
  		redirect_to account_path, notice: "Your profile has been update!"
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
  		:full_name, :address1, :address2, :city, :postcode, :state, :country]
  	)
  end
end
