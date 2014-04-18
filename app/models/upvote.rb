class Upvote < ActiveRecord::Base
  belongs_to :blurt
  def self.two_blurts
    blurt_count = Blurt.all.length
    arr = []
    blurt_count.times{ |b| arr << b+1 }
    blurt1  = arr.sample
    arr.delete(blurt1)
    blurt2 = arr.sample
    arr.delete(blurt2)
    [Blurt.find(blurt1), Blurt.find(blurt2)]
  end

end
