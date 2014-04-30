class Show < ActiveRecord::Base
  has_one :upvote
  has_and_belongs_to_many :blurts

end
