class PaintingPaintingCategory < ApplicationRecord
  acts_as_list scope: :painting_category
  belongs_to :painting
  belongs_to :painting_category
  validates :painting, :painting_category, presence: true
end
