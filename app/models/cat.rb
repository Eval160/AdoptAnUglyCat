class Cat < ApplicationRecord
  has_many :purchases
  has_one_attached :photo
  validates :name, presence: true

end
