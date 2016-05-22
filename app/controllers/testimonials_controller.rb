class TestimonialsController < ApplicationController
  def index
    @testimonials = Testimonial.page(params[:page]).per(48)
  end

  def new
    @testimonial = Testimonial.new
    render :new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to  testimonials_path
    else
      render :new
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    redirect_to testimonials_path
  end

  private

  def testimonial_params
    params.require(:testimonial).permit(:name, :date, :story, :image, :user_id)
  end
end
