class Painting < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :painting_painting_categories, inverse_of: :painting, dependent: :destroy
  has_many :painting_categories, through: :painting_painting_categories, inverse_of: :paintings

  has_attached_file :image, style: {mobile: "450x450", tablet: "900x900", desktop: "1200x1200"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :image, attachment_presence: true
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 10.megabytes

end
