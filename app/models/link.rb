class Link < ActiveRecord::Base
  belongs_to :user
  validates :title, :uniqueness => true
  has_many :comments
end
