class Message < ActiveRecord::Base

	has_and_belongs_to_many :afiles
	has_many :afile_messagers
	has_many :afiles, through: :afile_messagers
	
	has_and_belongs_to_many :users
	
	belongs_to :users
	belongs_to :talk
	
	validates :text, presence: true
end
