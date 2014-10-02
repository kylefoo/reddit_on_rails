class Vote < ActiveRecord::Base
  belongs_to :link
  belongs_to :user 
  attr_accessible :user_id, :link_id, :up
  validates :user_id, :uniqueness => { :scope => :link_id }
end
