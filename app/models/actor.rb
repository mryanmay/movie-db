class Actor < ApplicationRecord
  has_many :appearances
  has_many :movies, through: :appearances

  def name
    first_name + ' ' + last_name
  end
end
