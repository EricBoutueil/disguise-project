class AddTitleToCloths < ActiveRecord::Migration[5.1]
  def change
    add_column :cloths, :title, :string
  end
end
