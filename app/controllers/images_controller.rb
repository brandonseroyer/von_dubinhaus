class ImagesController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @image = @dog.images.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @image = @dog.images.new(image_params)
    if @image.save
      redirect_to dog_path(@image.dog)
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(image_params)
    redirect_to dog_path(@image.dog)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to dog_path(@image.dog)
  end

  private
  def image_params
    params.require(:image).permit(:avatar)
  end
end
