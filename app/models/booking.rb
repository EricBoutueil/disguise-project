class Booking < ApplicationRecord
  belongs_to :customer, class_name: "User", foreign_key: :customer_id
  belongs_to :cloth

  validates :start_date, presence: true,
    if: :compare_dates(:start_date)
  validates :end_date, presence: true,
    if: :compare_dates(:end_date)
  validates :total_booking_price, presence: true

  def compare_dates(:date)
    if Proc.new { |booking| booking.start_date > booking.end_date }
      errors.add(:date, 'Start date must be before end date')
    else
      return true
    end
  end
end
