class Video < ActiveRecord::Base
   attr_accessible :title, :description, :url

   #associations
   belongs_to :user
   has_many :likes
   has_many :comments
end
