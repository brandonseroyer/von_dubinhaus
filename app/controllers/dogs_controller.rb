class DogsController < ApplicationController
  def index
    @dogs = Dog.all.order(created_at: :desc)
  end

  def new
    @dog = Dog.new
    render :new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to  dogs_path
    else
      render :new
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @images = @dog.images
    @comments = @dog.comments
    render :show
  end

  def edit
    @dog = Dog.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :sex, :age, :breed, :info, :image, :user_id)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
