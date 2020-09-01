class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_type

      t.timestamps
    end
  end
end
