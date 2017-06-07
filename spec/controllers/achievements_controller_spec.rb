require 'rails_helper'

describe AchievementsController do
  describe 'GET new' do
    it 'renders :new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns new Achievement to @achievement' do
      get :new
      expect(assigns(:achievement)).to be_a_new(Achievement)
    end

  end

  describe 'GET show' do
    let(:achievement) {FactoryGirl.create(:public_achievement)}
    it 'renders :show template' do
      get :show,  params: { id: achievement }
      expect(response).to render_template(:show)
    end

    it 'assigns requested achievement to @achievement' do
      get :show,  params: { id: achievement }
      expect(assigns(:achievement)).to eq(achievement)
    end

  end
end