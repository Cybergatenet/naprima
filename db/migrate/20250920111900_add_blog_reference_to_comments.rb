class AddBlogReferenceToComments < ActiveRecord::Migration[8.0]
  def change
    add_reference :comments, :blog, null: false, foreign_key: true
  end
end
