class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :photo_id
      t.text :comment_text
      t.integer :commenting_user_id

      t.timestamps

    end
  end
end
