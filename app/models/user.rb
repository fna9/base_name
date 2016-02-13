class User < ActiveRecord::Base

	has_and_belongs_to_many :messagers
	has_many :messager_users
	has_many :messagers, through: :messager_users

	has_many :talkuser1, class_name: 'TalkUser', foreign_key: :user1_id, primary_key: :id
    has_many :talkuser2, class_name: 'TalkUser', foreign_key: :user2_id, primary_key: :id

end

