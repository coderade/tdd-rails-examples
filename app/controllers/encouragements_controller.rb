class EncouragementsController < ApplicationController
	before_action :authenticate_user

  def new

  end

	def authenticate_user
    @achievement = Achievement.find(params[:achievement_id])

    unless current_user
      redirect_to achievement_path(@achievement), alert: 'You must be logged in to encourage people'
    end
  end
end