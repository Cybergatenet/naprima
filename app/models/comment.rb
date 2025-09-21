class Comment < ApplicationRecord
  # belongs_to :blogs
  belongs_to :blog
  belongs_to :Person
end
