class CreateBookingReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_reviews do |t|
      t.references :booking, null: false, foreign_key: true
      t.string :cat_comment
      t.integer :cat_rating
      t.string :owner_comment
      t.integer :owner_rating

      t.timestamps
    end
  end
end
