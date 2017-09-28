class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.string :image_file
      t.integer :posting_user_id

      t.timestamps

    end
  end
end
