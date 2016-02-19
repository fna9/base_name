class Plan < ActiveRecord::Base

	has_and_belongs_to_many :groups

	
	has_many :plan_subjects
	has_many :subjects, through: :plan_subjects
	
	has_many :group_plans
	has_many :groups, through: :group_plans
 	
	validates :code, presence: true, uniqueness: true
	validates :title, presence: true
	validates :level, presence: true
	validates :form_of_study, presence: true
	validates :training_period, presence: true
end
