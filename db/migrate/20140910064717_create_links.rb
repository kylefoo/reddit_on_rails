class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer  :user
      t.string   :url
      t.timestamps
    end
  end
end
