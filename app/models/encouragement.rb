class Encouragement < ApplicationRecord
  belongs_to :user
  belongs_to :achievement

  validates_presence_of :message
end
