class Link < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :uniqueness => true
  attr_accessible :url, :user_id
  has_many :comments
  has_many :votes
end
