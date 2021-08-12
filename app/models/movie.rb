class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true,  uniqueness: true
  validates :overview, presence: true
end

# title is unique (FAILED - 5)
#   title cannot be blank (FAILED - 6)
#   overview cannot be blank (FAILED - 7)
#   has many bookmarks (FAILED - 8)
#   should not be able to destroy self if has bookmarks children (FAILED - 9)
