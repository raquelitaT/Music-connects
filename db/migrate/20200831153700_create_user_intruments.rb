class CreateUserIntruments < ActiveRecord::Migration[6.0]
  def change
    create_table :user_instruments do |t|
      t.integer :skill_level
      t.references :user, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true
      t.timestamps
    end
  end
end
