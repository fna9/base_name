class Student < ActiveRecord::Base

	has_many :marks
	

	has_many :group_students
	has_many :groups, through: :group_students
	
	belongs_to :user
	
	
	validates :last_name, presence: true, length: {maximum: 64}
	validates :first_name, presence: true, length: {maximum: 64}
	validates :b_date, presence: true
	validates :passport_series, presence: true, uniqueness: true
	validates :passport_id, presence: true, uniqueness: true
	
	validate :check_birthday

	def age(d=nil)
		d||=Date.today
		return unless b_date
		res=d.year-b_date.year
		res-= 1 if Date.new(d.year, b_date.month, b_date.day) > d
		res
	end
	
	def human_age(d=nil)
		"#{age(d)} #{RuPropisju.choose_plural(age(d), 'год', 'года', 'лет')}"
	end
	
private

	def check_birthday
		errors.add(:b_date, :invalid) if b_date && b_date>Date.today
		true
	end
end
