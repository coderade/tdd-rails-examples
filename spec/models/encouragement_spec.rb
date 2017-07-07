require 'rails_helper'

RSpec.describe Encouragement, type: :model do
  it { should belong_to(:user) }
	it { should belong_to(:achievement) }
	it { should validate_presence_of(:message)}
end
