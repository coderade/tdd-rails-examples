class AchievementPage
	include Capybara::DSL

	def visit_page(achievement)
		visit("achievements/#{achievement.id}")
		self
	end

	def encourage
		click_on('encourage-button')
		self
	end
end