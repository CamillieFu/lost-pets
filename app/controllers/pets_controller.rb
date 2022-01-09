class PetsController < ApplicationController
  before_action :set_pet, only: %w[:show :edit :update destroy]
  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def edit; end

  def update
    @pet.update

    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to root_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
