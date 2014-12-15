class AdsController < ApplicationController
	before_action :authenticate_user!
	before_filter :set_user, only: [:index, :new, :create]

  def index
  	@ads = Ad.where(user_id: @user).to_a
  end

  def new
  	@ad ||= Ad.new
  	render
  end

  def create
  	@ad = @user.ads.new(ad_params)
  	if @ad.save
  		redirect_to ads_path, notice: "Ad has been publish"
  	else
  		render 'edit'
  	end
  end

  private

  def set_user
    @user = current_user
  end

  def ad_params
  	params.require(:ad).permit(:category_id, :type_id, :user_id, :bedrooms, :bathrooms, :size, :title, :description)
  end
end
