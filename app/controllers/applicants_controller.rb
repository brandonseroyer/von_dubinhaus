class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all.order(created_at: :desc)
  end

  def new
    @applicant = Applicant.new
    render :new
  end

  def create
    @applicant = Applicant.new(applicant_params)
    if @applicant.save
      redirect_to  dogs_path
      flash[:notice] = 'Your Application Has Been Submitted!'
    end
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy
    redirect_to applicants_path
  end

  private

  def applicant_params
    params.require(:applicant).permit(:first_name, :last_name, :dog, :phone, :email, :address, :city, :state, :zip, :dogs, :about, :kids, :dogs, :cats)
  end
end
