class User < ActiveRecord::Base
	authenticates_with_sorcery!

 

  validates :password, length: {minimum: 3}, confirmation: true,
            if: Proc.new { |u| u.new_record? or !u.password.blank? }

	has_many :messager_users
	has_many :messages, through: :messager_users

	has_many :talkuser1, class_name: 'TalkUser', foreign_key: :user1_id, primary_key: :id
    has_many :talkuser2, class_name: 'TalkUser', foreign_key: :user2_id, primary_key: :id

end

