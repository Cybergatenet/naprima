class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_one_attached :image  # for a single image upload

  # has_many_attached :images # for multiple files

  # optional: validation
  # validates :image, presence: true
  # validate content types/size if you want:
  # validate :acceptable_image
  #
  # def acceptable_image
  #   return unless image.attached?
  #   unless image.blob.content_type.starts_with?('image/')
  #     errors.add(:image, 'must be an image')
  #   end
  #   if image.blob.byte_size > 5.megabytes
  #     errors.add(:image, 'is too big (max 5 MB)')
  #   end
  # end
end
