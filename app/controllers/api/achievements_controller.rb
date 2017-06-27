class Api::AchievementsController < ApiController
	def index
		achievements = Achievement.public_access
		render json: achievements
	end
end