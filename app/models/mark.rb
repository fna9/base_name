class Mark < ActiveRecord::Base
	belongs_to :student
	belongs_to :rating 
	
	validates :mark, presence: true
end
