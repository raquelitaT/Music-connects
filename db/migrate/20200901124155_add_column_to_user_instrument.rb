class AddColumnToUserInstrument < ActiveRecord::Migration[6.0]
  def change
    # add_reference :user_instrument, :instrument, null: false, foreign_key: true
    # add_reference :user_instrument, :user, null: false, foreign_key: true
  end
end
