class Cloth < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  has_many :bookings, dependent: :destroy

  CATEGORIES = ["a", "b", "c"]
  SIZES = ["aa", "bb", "cc"]

  validates :main_picture, presence: true
  validates :title, presence: true
  validates :category, presence: true #inclusion TODO
  validates :size, presence: true #inclusion TODO
  validates :price_per_day, presence: true, numericality: true
end
