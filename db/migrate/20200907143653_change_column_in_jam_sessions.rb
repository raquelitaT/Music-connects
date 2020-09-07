class ChangeColumnInJamSessions < ActiveRecord::Migration[6.0]
  def change
    change_column :jam_sessions, :starts_at, :datetime
    change_column :jam_sessions, :ends_at, :datetime
  end
end
