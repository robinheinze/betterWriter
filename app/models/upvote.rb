class Upvote < ActiveRecord::Base
  belongs_to :blurt
  belongs_to :show
  def self.two_blurts
    blurt_ids = []
    Blurt.all.each do |b|
      blurt_ids << b.id
    end
    blurt1  = blurt_ids.sample
    blurt_ids.delete(blurt1)
    blurt2 = blurt_ids.sample
    blurt_ids.delete(blurt2)
    [Blurt.find(blurt1), Blurt.find(blurt2)]
  end

end
