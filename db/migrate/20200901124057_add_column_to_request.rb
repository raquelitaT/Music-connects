class AddColumnToRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :user, null: false, foreign_key: true
    add_reference :requests, :jam_session, null: false, foreign_key: true
  end
end
