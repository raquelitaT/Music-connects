class CreateJamSessionInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :jam_session_instruments do |t|
      t.references :jam_session, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
