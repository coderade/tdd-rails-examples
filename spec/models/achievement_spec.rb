require 'rails_helper'

RSpec.describe Achievement, type: :model do
	describe 'validations' do
		it {should validate_presence_of(:title).with_message("Title can't be blank")}

		it {should validate_uniqueness_of(:title).scoped_to(:user_id)
									 .with_message("You can't have two achievements with the same title.")}

		it {should validate_presence_of(:user)}

		it {should belong_to(:user)}
	end

	it 'converts markdown to html' do
		achievement = Achievement.new(description: 'Awesome **thing** I *actually* did.')
		expect(achievement.description_html).to include('<strong>thing</strong>')
		expect(achievement.description_html).to include('<em>actually</em>')
	end

	let(:user) {FactoryGirl.create(:user, email: 'test@test.com')}
	it 'has silly title' do
		achievement = Achievement.new(title: 'New Achievement', user: user)
		expect(achievement.silly_title).to eq('New Achievement by test@test.com')
	end
end

