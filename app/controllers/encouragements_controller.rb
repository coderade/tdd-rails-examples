class EncouragementsController < ApplicationController

  def new
    @achievement = Achievement.find(params[:achievement_id])
    redirect_to achievement_path(@achievement)
  end
end