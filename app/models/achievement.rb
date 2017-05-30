class Achievement < ApplicationRecord
  enum privacy: [:public_access, :private_access, :friends_access]
end
