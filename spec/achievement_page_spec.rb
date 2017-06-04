require 'rails_helper'

feature 'achievement_page' do
  scenario 'achievement public page' do
    achievement = Achievement.create(title: 'Just did it')
    visit("/achievements/#{achievement.id}")

    expect(page).to have_content('Just did it')
  end

  scenario 'render markdown description' do
    achievement = Achievement.create(title:'test', description: 'That *was* a description')
    visit("/achievements/#{achievement.id}")

    expect(page).to have_content('<i>was</i>')
  end
end