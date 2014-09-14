class Link < ActiveRecord::Base
  belongs_to :user
  validates :title, :uniqueness => true
end