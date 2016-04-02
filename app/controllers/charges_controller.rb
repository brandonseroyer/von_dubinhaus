class ChargesController < ApplicationController
  def create
    @amount = Donation.find(params[:donation_id]).amount * 100

    customer = Stripe::Customer.create(
      email: 'example@stripe.com',
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
