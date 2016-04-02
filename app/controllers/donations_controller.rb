class DonationsController < ApplicationController
  def new
    @donation = Donation.new
    render :new
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      render :show
    else
      render :new
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:first_name, :last_name, :email, :amount)
  end
end
