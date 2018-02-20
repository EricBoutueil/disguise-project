class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cloths, dependent: :destroy, foreign_key: 'owner_id'
  has_many :bookings, dependent: :destroy, foreign_key: 'customer_id'
  # has_many :cloths, through: :bookings, foreign_key: 'customer_id'
end
