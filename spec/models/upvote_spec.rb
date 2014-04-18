require 'spec_helper'

describe Upvote do
 describe "two_blurts" do
  it "should return two unique blurts" do
    a = Blurt.create(:content => "hello")
    b = Blurt.create(:content => "goodbye")
    z = Blurt.create(:content => "zello")
    y = Blurt.create(:content => "yello")
    c , d = Upvote.two_blurts
    c.content.should_not eq d.content
  end
 end
end
