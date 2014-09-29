class Link < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :uniqueness => true
  attr_accessible :url 
  has_many :comments
end
