class ReviewsController < ApplicationController
   before_filter :authenticate_user!

  def create
    @food = Food.find(params[:food_id])
    @review = @food.reviews.build(review_params)
    @review.user_id = current_user.id if current_user

    if @review.save
      redirect_to food_path(@food)
    else
      render 'foods/show'
    end
  end

  # def show; end

  # def edit; end

  # def update
  #   if @review.update(review_params)
  #     redirect_to users_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @review.destroy
  #   redirect_to users_path
  #end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:user_id, :food_id, :content)
  end

end