class Afile < ActiveRecord::Base
	has_and_belongs_to_many :messages
	 has_attached_file :file

end
