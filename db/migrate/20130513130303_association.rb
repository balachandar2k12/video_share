class Association < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :integer
    add_column :comments, :user_id, :integer
    add_column :videos, :user_id, :integer
  end
end
