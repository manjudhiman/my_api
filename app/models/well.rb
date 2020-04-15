class Well < ApplicationRecord
  belongs_to :retro


  def self.find_well(id)
    a = Well.includes(:retro).where(retro_id: id)
    h = {}

    a.each do |x|
      h[x.id] = {'value': x.comment}
    end

    h
  end

end
