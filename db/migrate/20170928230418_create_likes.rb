class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :photo_id
      t.boolean :like
      t.integer :liking_user_id

      t.timestamps

    end
  end
end
