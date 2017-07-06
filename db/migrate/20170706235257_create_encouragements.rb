class CreateEncouragements < ActiveRecord::Migration[5.1]
  def change
    create_table :encouragements do |t|
      t.references :user, foreign_key: true
      t.references :achievement, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
