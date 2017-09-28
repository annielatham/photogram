class AddImageCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :images_count, :integer
  end
end
