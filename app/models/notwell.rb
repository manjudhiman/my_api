class Notwell < ApplicationRecord
  belongs_to :retro


  def self.find_notwell_comments(id)
    a = Notwell.includes(:retro).where(retro_id: id)
    h = {}

    a.each do |x|
      h[x.id] = {'value': x.comment}
    end

    h

  end
end
