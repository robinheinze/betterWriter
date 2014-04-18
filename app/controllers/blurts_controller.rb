class BlurtsController < ApplicationController

  def create
    @blurt = Blurt.create(blurt_params)
    current_user.blurts << @blurt
    redirect_to :back
  end

  private

  def blurt_params
    params.require(:blurt).permit(:content)
  end

end
