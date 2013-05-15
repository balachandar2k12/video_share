class MobileController < ApplicationController
  def login
  	 user = User.find_by_email_and_password(params[:email],params[:password])
  	 if user.nil?
  	 	 render "true"
  	 else
  	   render "false"
  	 end
  end

  def register
  	user=User.create(params[:user])
  end

  def logout
  end

  def user_medias
   @user=User.find(params[:id])
   @videos=@user.videos
     @video_json=[]
    @videos.each do |video|
    	comments=[]
         @comments.each do |comment|

      @videos_json <<{:id=>video.id,:video_url=>video.movie.url,:comments=>}
    end
  end

end
