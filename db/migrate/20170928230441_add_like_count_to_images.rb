class AddLikeCountToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :likes_count, :integer
  end
end
