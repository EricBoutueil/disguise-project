class RenameUserIdInCloths < ActiveRecord::Migration[5.1]
  def change
    rename_column :cloths, :user_id, :owner_id
  end
end
