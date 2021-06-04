class Api::V1::ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_review, except: [:create]
  before_action :authorize!, only: [:update, :destroy]
    
  def create
    pet = Pet.find params[:pet_id]
    review = Review.new review_params
    review.user = current_user
    review.pet = pet

    if review.save
      render json: { 
        id: pet.id
      }
    else
      render json: { 
        errors: review.errors 
      },
      status: 422 #Unprocessable Entity
    end
  end

  def destroy
    @review.destroy
    
    render(
      json: { 
        status: 200 
      }, 
      status: 200
    ) 
  end

  def update
    if @review.update review_params
      render json: { 
        id: @review.pet_id 
      }
    else
      render(
        json: { 
          errors: @review.errors 
        },
        status: 422 #Unprocessable Entity
      )
    end
  end

  private

  def find_review
    @review = Review.find params[:id]
  end

  def review_params
    params.require(:review).permit(
      :title,
      :body, 
      :rating
    )
  end

  def authorize!
    unless can?(:crud, @review)
      render(
        json: { 
          status: 401 
        },
        status: 401 #Not Authorized
      )
    end
  end
end
