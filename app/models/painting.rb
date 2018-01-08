class Painting < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :painting_painting_categories, inverse_of: :painting
  has_many :painting_categories, through: :painting_painting_categories, inverse_of: :paintings

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  #validates :image, attachment_presence: true
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes

end
