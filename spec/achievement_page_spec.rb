require 'rails_helper'

feature 'achievement_page' do
  scenario 'achievement public page' do
    achievement = FactoryGirl.create(:achievement, title: 'Just did it')
    visit("/achievements/#{achievement.id}")

    expect(page).to have_content('Just did it')

    # Create list of items with FactoryGirl example.
    # achievements = FactoryGirl.create_list(:achievement, 3)
    # p achievements
  end

  scenario 'render markdown description' do
    achievement = FactoryGirl.create(:achievement, description: 'That *was* a description')
    visit("/achievements/#{achievement.id}")

    expect(page).to have_css('em','was')
  end
end