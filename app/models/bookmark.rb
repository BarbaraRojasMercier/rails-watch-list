class Bookmark < ApplicationRecord
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
end
