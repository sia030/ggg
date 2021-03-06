class Song < ActiveRecord::Base
	validates_presence_of :title, :description, :user_id
	
	belongs_to :user
	has_many :comments, dependent: :destroy
end
