class VideosController < ApplicationController
  def index
  	@user=current_user
  end

  def create
  	 @user=current_user
  	respond_to do |format|
	    if @user.videos.save
	      format.js
	    end
  	end
  end

  def delete
  end
end
