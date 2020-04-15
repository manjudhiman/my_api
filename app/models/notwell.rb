class Notwell < ApplicationRecord
  belongs_to :retro


  def self.find_notwell_comments(id)
    Notwell.includes(:retro).where(retro_id: id )
  end
end
