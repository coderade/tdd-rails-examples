require 'rails_helper'

RSpec.describe 'Achievements API', type: :request do

	let(:user) {FactoryGirl.create(:user, email: 'test@test.com')}

	it 'sends public achievements' do
		public_achievement =  FactoryGirl.create(:public_achievement, title: 'My Public Achievement', user: user)
		private_achievement = FactoryGirl.create(:private_achievement, title: 'My Private Achievement', user: user)

		get '/api/achievements', headers: {'Content-Type': 'application/vnd.api+json'}

		expect(response.status).to eq(200)

		json = JSON.parse(response.body)

		expect(json['data'].count).to eq(1)
		expect(json['data'][0]['type']).to eq('achievements')
		expect(json['data'][0]['attributes']['title']).to eq('My Public Achievement')
	end
end