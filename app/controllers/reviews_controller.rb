class ReviewsController < ApplicationController
  def create
    @jewel = Jewel.find(params[:jewel_id])
    @review = Review.new(review_params)
    @booking = Booking.new
    @review.jewel = @jewel
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to jewel_path(@jewel)
    else
      render "jewels/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
