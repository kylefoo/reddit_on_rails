class Comment < ActiveRecord::Base
  has_many :messages
  attr_accessible :message, :user_id, :link_id
end
