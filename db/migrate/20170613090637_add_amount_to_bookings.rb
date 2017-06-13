class AddAmountToBookings < ActiveRecord::Migration[5.0]
  def change
        add_monetize :bookings, :amount, currency: { present: false }
  end
end
