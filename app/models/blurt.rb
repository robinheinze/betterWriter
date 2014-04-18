class Blurt < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes

  def self.best_blurt
    freq = Hash.new(0)
    Upvote.all.each{|upvote| freq[upvote.blurt_id] += 1}
    Blurt.find(freq.keys.sort.first)
  end

end
