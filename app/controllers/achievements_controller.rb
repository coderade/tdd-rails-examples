class AchievementsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  before_action :user_is_owner, only: [:edit, :update, :destroy] do

  end

  def index
    @achievements = Achievement.get_public_achievements
  end

  def new
    @achievement =  Achievement.new
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def edit
  end

  def update
    if @achievement.update_attributes(achievement_params)
      redirect_to achievement_path(@achievement)
    else
      render :edit
    end
  end

  def create
    service = CreateAchievement.new(params[:achievement], current_user)
    service.create
    render body: nil
  end

  def destroy
    @achievement.destroy
    redirect_to achievements_path
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :privacy, :cover_image, :featured)
  end

  def user_is_owner
    @achievement = Achievement.find(params[:id])
    if current_user != @achievement.user
      redirect_to achievements_path
    end
  end
end