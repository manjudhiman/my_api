class Retro < ApplicationRecord
  has_many :wells
  has_many :notwells
  has_many :improves
  has_many :continues



  def self.find_all_comments(id)
  end
end
