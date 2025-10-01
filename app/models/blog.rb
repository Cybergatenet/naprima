class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_one_attached :image  # for a single image upload

  # has_many_attached :images # for multiple files
end
