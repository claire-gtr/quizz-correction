class Song < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, presence: true
end
