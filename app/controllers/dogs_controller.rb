class DogsController < ApplicationController
  before_action :find_dog, except: [:new, :create, :index]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @dogs = Dog.all.order(created_at: :desc)
  end

  def show
    @dog = Dog.find(params[:id])
    render :show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to  dogs_path
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:id])
    render :edit
  end

  def update
    @dog = Dog.find(params[:id])

    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      render :edit
    end
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
