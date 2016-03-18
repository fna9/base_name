class Talk < ActiveRecord::Base
	has_many :messages, dependent: :destroy

	validates :title, presence: true
end
