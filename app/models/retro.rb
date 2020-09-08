class Retro < ApplicationRecord
  has_many :wells
  has_many :notwells
  has_many :improves
  has_many :continues



  def self.find_all_comments(id)
  end


  def self.find_retro_details

    retro_details = Retro.all

    retro_ids = []

    for i in retro_details do
      retro_ids  << (i.id)
    end

    return retro_ids.sort
  end

end
