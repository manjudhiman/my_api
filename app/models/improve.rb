class Improve < ApplicationRecord
  belongs_to :retro


  def self.find_improve_comments(id)
    a = Improve.includes(:retro).where(retro_id: id)
    h = {}

    a.each do |x|
      h[x.id] = {'value': x.comment}
    end

    h
  end


  def self.get_all_comments(id)
    a = Improve.includes(:retro).where(retro_id: id)
    arr = []

    a.each do |x|
      arr << x.comment
    end
    arr
  end
end
