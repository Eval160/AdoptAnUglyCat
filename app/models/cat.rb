class Cat < ApplicationRecord
  has_many :purchases, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
   against: [ :name, :description],
    using: {
      tsearch: { prefix: true }
    }
end
