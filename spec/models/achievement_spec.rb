require 'rails_helper'

RSpec.describe Achievement, type: :model do
	describe 'validations' do
		it {should validate_presence_of(:title).with_message("Title can't be blank")}

		it {should validate_uniqueness_of(:title).scoped_to(:user_id)
									 .with_message("You can't have two achievements with the same title.")}

		it {should validate_presence_of(:user)}

		it {should belong_to(:user)}
	end

end

