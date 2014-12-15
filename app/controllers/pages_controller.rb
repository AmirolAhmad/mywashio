class PagesController < ApplicationController
  def index
  	@category = Category.find_by_slug(params[:sort])
  	if @category
  		@ads = Ad.by_category(@category.id)
  	else
  		@ads = Ad.all
  		flash.now[:notice] = "No ads found for '#{params[:sort]}'." if !params[:sort].blank?
  	end
  end

  def show
    @ad = Ad.find(params[:id])
  end
end
