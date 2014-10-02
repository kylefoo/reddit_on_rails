class ChangeUserField < ActiveRecord::Migration
  def change
  	rename_column(:links, :user, :user_id) 
  end
end
