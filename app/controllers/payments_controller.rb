class PaymentsController < ApplicationController
 before_action :set_booking
 before_action :authenticate_user!, only:[:new]

  def new
    skip_authorization
  end

  def create
    skip_authorization
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents, # or amount_pennies
    description:  "Payment for Creative Escape #{@booking.sku} for booking #{@booking.id}",
    currency:     @booking.amount.currency
  )

  @booking.update(payment: charge.to_json, state: 'paid')
  redirect_to booking_path(@booking)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_booking_payment_path(@booking)
  end

private

  def set_booking
    @booking = Booking.where(state: 'pending').find(params[:booking_id])
  end
end
