class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.sting :content
      t.integer :rating

      t.timestamps
    end
  end
end
