class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :friend
    	t.references :user
      t.timestamps
    end
  end
end
