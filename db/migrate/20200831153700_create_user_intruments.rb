class CreateUserIntruments < ActiveRecord::Migration[6.0]
  def change
    create_table :user_intruments do |t|
      t.integer :skill_level

      t.timestamps
    end
  end
end
