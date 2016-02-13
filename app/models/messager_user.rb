class MessagerUser < ActiveRecord::Base
  belongs_to :messager
  belongs_to :user
end
