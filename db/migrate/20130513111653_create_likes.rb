class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.references :like
      t.references :comment
      t.references :video
      t.timestamps
    end
  end
end
