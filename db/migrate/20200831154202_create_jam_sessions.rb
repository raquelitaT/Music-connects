class CreateJamSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :jam_sessions do |t|
      t.string :title
      t.date :starts_at
      t.date :ends_at
      t.string :location
      t.string :image
      t.integer :max_capacity
      t.string :status
      t.string :description
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
