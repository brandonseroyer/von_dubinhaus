class DonationsController < ApplicationController
  def index
    @donations = Donation.all.order(created_at: :desc)
  end
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

  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy
    redirect_to donations_path
  end

  private

  def donation_params
    params.require(:donation).permit(:first_name, :last_name, :email, :amount, :message)
  end
end
