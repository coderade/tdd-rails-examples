class AchievementsController < ApplicationController
  def new
    @achievement =  Achievement.new
  end
end