class Talk < ActiveRecord::Base
	has_many :messages, dependent: :destroy
end
