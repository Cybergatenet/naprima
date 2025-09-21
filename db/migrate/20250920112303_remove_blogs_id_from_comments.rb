class RemoveBlogsIdFromComments < ActiveRecord::Migration[8.0]
  def change
    remove_column :comments, :blogs_id, :integer
  end
end
