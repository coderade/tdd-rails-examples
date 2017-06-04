class AchievementsController < ApplicationController
  def new
    @achievement =  Achievement.new
  end

  def show
    @achievement = Achievement.find(params[:id])
    @description = @achievement.description.html_safe
  end

  def create
    @achievement = Achievement.new(achievement_params)
    if @achievement.save
      redirect_to root_url, notice: 'Achievement has been created.'
    else
      render :new
    end
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privacy, :cover_image, :featured)
  end
end