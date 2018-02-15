class PaintingCategory < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_list

  has_many :painting_painting_categories, inverse_of: :painting_category, dependent: :destroy
  has_many :paintings, through: :painting_painting_categories, inverse_of: :painting_categories
end
