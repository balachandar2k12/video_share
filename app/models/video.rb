class Video < ActiveRecord::Base
   attr_accessible :title, :description, :url
   attr_accessible :movie
   has_attached_file :movie, :default_url => "/images/:style/missing.png"

   #associations
   belongs_to :user
   has_many :likes
   has_many :comments
end
