class AddPhotoToCloths < ActiveRecord::Migration[5.1]
  def change
    add_column :cloths, :photo, :string
  end
end
