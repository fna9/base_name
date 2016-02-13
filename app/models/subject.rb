class Subject < ActiveRecord::Base
	has_many :plans
	has_many :ratings
	has_and_belons_to_many :plans
	has_and_belons_to_many :pages
	has_and_belons_to_many :teachers
	
	validates :title, presence: true
	validates :type, presence: true
	validates :type_of_reporting, presence: true
end
