class Invitation < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :status,:friend_id
	belongs_to :friend, :class_name=>"User", :foreign_key=>"friend_id"
  belongs_to :user
end
