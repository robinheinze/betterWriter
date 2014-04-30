class Blurt < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes
  has_and_belongs_to_many :shows

  def self.best_blurt
    Blurt.find(Blurt.blurt_vote_freq.first.first)
  end

  def self.blurt_vote_freq
    freq = Hash.new(0)
    Upvote.all.each{|upvote| freq[upvote.blurt_id] += 1}
    freq.sort_by{|blurt_id, upvotes| upvotes}.reverse
  end

end
