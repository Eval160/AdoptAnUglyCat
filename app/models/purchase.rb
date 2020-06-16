class Purchase < ApplicationRecord
  belongs_to :cat
  belongs_to :user
  validates :message, presence: true
end
