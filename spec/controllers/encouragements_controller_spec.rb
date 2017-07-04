require 'rails_helper'

RSpec.describe EncouragementsController do

	let(:user) {FactoryGirl.create(:user)}
	let(:author) {FactoryGirl.create(:user)}
	let(:achievement) {FactoryGirl.create(:public_achievement, user: author)}

	context 'guest user' do
		it 'is redirected back to achievement page' do
			get :new, params: {achievement_id: achievement.id}
			expect(response).to redirect_to(achievement_path(achievement))
		end

		it 'assigns flash message' do

		end

	end

	context 'autheticated user' do
		it 'renders :new template' do

		end

		it 'assigns new encouragement to the template' do

		end
	end

	context 'achievement author' do
		it 'is redirected back to achievement page' do

		end

		it 'assigns flash message' do

		end
	end

	context 'user who already left encouragement for this achievement' do
		it 'is redirected back to achievement page' do

		end

		it 'assigns flash message' do

		end
	end
end