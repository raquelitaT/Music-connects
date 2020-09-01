class AddColumnToRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :user, null: false, foreign_key: true
    add_reference :requests, :jamsession, null: false, foreign_key: true
  end
end
