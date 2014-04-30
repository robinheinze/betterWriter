class ShowsController < ApplicationController
  def new
    @blurt1, @blurt2 = Upvote.two_blurts
    @show = Show.create(:user_id => current_user.id)
    @show.blurts << @blurt1
    @show.blurts << @blurt2
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
  end

  private

  def show_params
    params.require(:show).permit(:user_id)
  end
end
