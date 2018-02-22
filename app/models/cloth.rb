class Cloth < ApplicationRecord
  mount_uploader :main_picture, PhotoUploader
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  has_many :bookings, dependent: :destroy

  CATEGORIES = ["a", "b", "c"]
  SIZES = ["aa", "bb", "cc"]

  validates :main_picture, presence: true
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not a valid category" }
  validates :size, presence: true, inclusion: { in: SIZES, message: "%{value} is not a valid size" }
  validates :price_per_day, presence: true, numericality: true
end
