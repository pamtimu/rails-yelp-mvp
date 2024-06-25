class Restaurant < ApplicationRecord
  validates :name,:phone_number, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }, presence: true
  has_many :reviews, dependent: :destroy
end
