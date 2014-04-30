class ShowsController < ApplicationController
  def new
    @blurt1, @blurt2 = Upvote.two_blurts
    @show = Show.create(:user_id => current_user.id)
    @show.blurts << @blurt1
    @show.blurts << @blurt2
    @blurt1.update_approval
    @blurt2.update_approval
  end


  private

  def show_params
    params.require(:show).permit(:user_id)
  end
end
