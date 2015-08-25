class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to users_path
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:user_id, :contentp)
  end

end
