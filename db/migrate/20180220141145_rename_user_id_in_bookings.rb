class RenameUserIdInBookings < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookings, :user_id, :customer_id
  end
end
