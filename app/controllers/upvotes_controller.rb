class UpvotesController < ApplicationController

  def new
    @blurt1, @blurt2 = Upvote.two_blurts
  end

  def create
    @upvote = Upvote.create(vote_params)
    @upvote.update(user_id: current_user.id)
    redirect_to upvotes_path
  end

  def index
    @best_blurt = Blurt.best_blurt
    @blurts = Blurt.blurt_vote_freq
    @vote_quantity = Upvote.where(blurt_id: @best_blurt.id).length

  end

  def show
  end

  private
  def vote_params
    params.require(:upvote).permit(:blurt_id)
  end

end
