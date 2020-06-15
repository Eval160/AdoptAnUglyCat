class Cat < ApplicationRecord
  has_many :purchases
  validates :name, presence: true

end
