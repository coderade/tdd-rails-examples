class UserMailer < ApplicationMailer
	def achievement_created(email, achievement_id)
		@achievement_id = achievement_id
		mail to: email,
				 subject: 'Congratulations with your new achievement!'
	end
end
