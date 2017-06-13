class BookingsController < ApplicationController

  def create
    @creative_escape = CreativeEscape.find(params[:creative_escape_id])
    booking  = Booking.create!(sku: @creative_escape.sku, amount: @creative_escape.price_cents, state: 'pending')
    redirect_to new_booking_payment_path(booking)
  end

  def show
    @booking = Booking.where(state: 'paid').find(params[:id])
  end

end
