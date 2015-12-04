class TestimonialsController < ApplicationController
  before_action :find_testimonial, except: [:index, :new, :create]
  def index
    @testimonials = Testimonial.all.order(created_at: :desc)
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

  def show
    @testimonial = Testimonial.find(params[:id])
    render :show
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @testimonial = Testimonial.find(params[:id])

    if @testimonial.update(testimonial_params)
      redirect_to testimonial_path(@testimonial)
    else
      render :edit
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    redirect_to testimonials_path
  end

  private
  def testimonial_params
    params.require(:testimonial).permit(:name, :date, :age, :story, :image, :user_id)
  end

  def find_testimonial
    @testimonial = Testimonial.find(params[:id])
  end
end
