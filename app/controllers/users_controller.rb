class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
    @blurt = Blurt.new
    @blurts = @user.blurts
  end
end
