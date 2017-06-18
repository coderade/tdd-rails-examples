require 'rails_helper'

describe AchievementsController do

	describe 'guest user' do
		describe 'GET index' do
			let(:achievement) {instance_double(Achievement)}

			before do
				allow(Achievement).to receive(:get_public_achievements) {[achievement]}
			end

			it 'render :index template' do
				get :index
				expect(response).to render_template(:index)
			end

			it 'assigns public achievements to template' do
				get :index
				expect(assigns(:achievements)).to eq([achievement])
			end
		end
	end

	describe 'authenticated_user' do
		let(:user) {instance_double(User)}

		before do
			allow(controller).to receive(:current_user) {user}
			allow(controller).to receive(:authenticate_user!) {true}
		end

		describe 'POST create' do
			let(:achievement_params) { ActionController::Parameters.new('title': 'title').permit(:title) }
			let(:create_achievement) {instance_double(CreateAchievement)}


			before do
				allow(CreateAchievement).to receive(:new) {create_achievement}
			end

			it 'sends create message to CreateAchievement' do
				expect(CreateAchievement).to receive(:new).with(achievement_params, user)
				expect(create_achievement).to receive(:create)
				post :create, params: {achievement: achievement_params }
			end
		end

	end
end