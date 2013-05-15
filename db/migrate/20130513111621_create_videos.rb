class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.text :url
      t.attachment :movie
      t.references :user
      t.timestamps
    end
  end
end
