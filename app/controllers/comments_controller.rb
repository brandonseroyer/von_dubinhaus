class CommentsController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    @comment = @dog.comments.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @comment = @dog.comments.new(comment_params)
    if verify_recaptcha
      @comment.save
      UserMailer.comment_email(@dog).deliver
      redirect_to dog_path(@comment.dog)
    else
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to dog_path(@comment.dog)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to dog_path(@comment.dog)
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :name, :dog_id, :user_id)
  end
end
