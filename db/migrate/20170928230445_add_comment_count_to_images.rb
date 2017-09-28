class AddCommentCountToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :comments_count, :integer
  end
end
