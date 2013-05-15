class AddSignupDeviceColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :signup_devise, :string
  end
end
