class ChargesController < ApplicationController
  def create
    @amount = Donation.find(params[:donation_id]).amount.to_s.split(//)
    if @amount.last == "0"
      @subtotal = @amount.join.to_i.round * 100
    else
      @subtotal = @amount.join.gsub(".","").to_i
    end

    customer = Stripe::Customer.create(
      email: 'example@stripe.com',
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @subtotal,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
