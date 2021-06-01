class GenreAssignment < ApplicationRecord
  belongs_to :movie
  belongs_to :genre
end
