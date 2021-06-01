class Genre < ApplicationRecord
  has_many :genre_assignments, dependent: :destroy
  has_many :movies, through: :genre_assignments

  validates :name, presence: true, uniqueness: true
end
