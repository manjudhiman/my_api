class Well < ApplicationRecord
  belongs_to :retro


  def self.find_well(id)
    Well.includes(:retro).where(retro_id: id )
  end

end
