class Continue < ApplicationRecord
  belongs_to :retro

  def self.find_continue(id)
     Continue.includes(:retro).where(retro_id: id )
  end
end
