require 'spec_helper'

describe Blurt do
  describe "top_ten" do
    it "selects the blurts with the most upvotes" do
      a = Blurt.create(:content => "hello")
      b = Blurt.create(:content => "goodbye")
      z = Blurt.create(:content => "zello")
      y = Blurt.create(:content => "yello")
      Upvote.create(:blurt_id => a.id)
      Upvote.create(:blurt_id => b.id)
      Upvote.create(:blurt_id => a.id)
      Blurt.best_blurt.should eq a
    end
  end
end
