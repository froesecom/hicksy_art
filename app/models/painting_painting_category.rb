class PaintingPaintingCategory < ApplicationRecord
  belongs_to :painting
  belongs_to :painting_category
  validates :painting, :painting_category, presence: true
end
