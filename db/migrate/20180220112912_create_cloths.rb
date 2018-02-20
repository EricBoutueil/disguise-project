class CreateCloths < ActiveRecord::Migration[5.1]
  def change
    create_table :cloths do |t|
      t.string :category
      t.text :description
      t.string :size
      t.string :main_picture
      t.float :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
