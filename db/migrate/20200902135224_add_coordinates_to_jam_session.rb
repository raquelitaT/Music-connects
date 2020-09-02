class AddCoordinatesToJamSession < ActiveRecord::Migration[6.0]
  def change
    add_column :jam_sessions, :latitude, :float
    add_column :jam_sessions, :longitude, :float
  end
end
