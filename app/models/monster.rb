class Monster < ApplicationRecord
  validates :name, :birthdate, :phone , presence: true, uniqueness: true
  validates :phone, numericality: true
  has_many :tweet, dependent: :destroy
  has_many :monster_followers, dependent: :destroy
end