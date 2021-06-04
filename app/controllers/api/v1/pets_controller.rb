class Api::V1::PetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_pet, only: [:update, :show, :destroy]

  def create
    pet = Pet.new pet_params
    pet.user = current_user

    if pet.save
      render json: { 
        id: pet.id 
      }
    else
      render(
        json: { 
          errors: pet.errors 
        },
        status: 422 #Unprocessable Entity
      )
    end
  end

  def update
    if @pet.update pet_params
      render json: { 
        id: @pet.id 
      }
  else
      render(
        json: { 
          errors: @pet.errors 
        },
        status: 422 #Unprocessable Entity
      )
    end
  end

  def index
    pets = Pet.all
    render json: pets
  end

  def show
    render json: @pet
  end

  def destroy
    @pet.destroy

    render(
      json: { 
        status: 200 
      }, 
      status: 200
    ) 
  end

  private

  def find_pet
    @pet = Pet.find params[:id]
  end
  
  def pet_params
    params.require(:pet).permit(
      :name,
      :pet_type,
      :image_url,
      :description,
      :is_available
    )
  end
end
