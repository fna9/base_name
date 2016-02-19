class Message < ActiveRecord::Base

	has_many :afile_messagers
	has_many :afiles, through: :afile_messagers
	
	has_many :messager_users
	has_many :users, through: :messager_users
	
	belongs_to :users
	belongs_to :talk
	
	validates :text, presence: true
end
