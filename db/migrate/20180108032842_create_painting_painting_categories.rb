class CreatePaintingPaintingCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :painting_painting_categories do |t|
      t.references :painting, foreign_key: true
      t.references :painting_category, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
