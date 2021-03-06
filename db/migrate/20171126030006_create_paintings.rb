class CreatePaintings < ActiveRecord::Migration[5.1]
  def change
    create_table :paintings do |t|
      t.string :name
      t.string :slug
      t.integer :price
      t.text :details
      t.boolean :featured, default: false
      t.attachment :image

      t.timestamps
    end
  end
end
