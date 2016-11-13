class ChargesController < ApplicationController
  def create
    @email = Donation.find(params[:donation_id]).email
    @first_name = Donation.find(params[:donation_id]).first_name
    @last_name = Donation.find(params[:donation_id]).last_name
    @amount = Donation.find(params[:donation_id]).amount
    @subtotal = view_context.number_to_currency(@amount).to_s.split(//).join.gsub(".","").to_i

    customer = Stripe::Customer.create(
      email: @email,
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @subtotal,
      description: "Payment submitted by #{@first_name} #{@last_name}",
      currency: 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
