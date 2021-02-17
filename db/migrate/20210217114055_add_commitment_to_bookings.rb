class AddCommitmentToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :commitment, :boolean, default: false
  end
end
