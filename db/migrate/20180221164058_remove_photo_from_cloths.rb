class RemovePhotoFromCloths < ActiveRecord::Migration[5.1]
  def change
    remove_column :cloths, :photo
  end
end
