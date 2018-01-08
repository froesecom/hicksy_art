class PaintingCategory < ApplicationRecord
  has_many :painting_painting_categories, inverse_of: :painting_category
  has_many :paintings, through: :painting_painting_categories, inverse_of: :painting_categories
end
