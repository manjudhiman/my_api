class Improve < ApplicationRecord
  belongs_to :retro


  def self.find_improve_comments(id)
    Continue.includes(:retro).where(retro_id: id )
  end
end
