class BookingsController < ApplicationController

  def create
    skip_authorization
    @creative_escape = CreativeEscape.find(params[:creative_escape_id])
    booking  = Booking.create!(sku: @creative_escape.sku, amount: @creative_escape.price, state: 'pending')
    redirect_to new_booking_payment_path(booking)
  end

  def show
    skip_authorization
    @booking = Booking.where(state: 'paid').find(params[:id])
  end

end
