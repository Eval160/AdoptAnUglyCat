class Cat < ApplicationRecord
  has_many :purchases
  validates :name, presence: true
  has_one_attached :photo
end
