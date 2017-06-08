class AddUserToAchievements < ActiveRecord::Migration[5.1]
  def change
    add_reference :achievements, :user, foreign_key: true
  end
end
