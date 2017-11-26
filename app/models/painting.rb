class Painting < ApplicationRecord

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :image, attachment_presence: true
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes

end
