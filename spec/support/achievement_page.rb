class AchievementPage
	include Capybara::DSL

	def visit_page(achievement)
		visit("achievements/#{achievement.id}")
		self
	end

	def encourage
		click_link_or_button('encourage-button')
		self
	end
end