class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :actors, :genre, presence: true

  has_many :appearances
  has_many :actors, through: :appearances
  belongs_to :genre
end
