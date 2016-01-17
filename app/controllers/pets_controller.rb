class PetsController < ApplicationController

  before_action :authenticate_user!

  def index    

      @pets = Pet.all

  end

  def pet
    pet = Pet.find_by_id(params[:id])
    render status:200,json:pet
  end

  def owner
    pet = Pet.find_by_id(params[:id])
    owner = pet.user
    render status:200,json:owner
  end

  def new
    @user = current_user
    @pet = current_user.pets.new
  end

  def create
    @user = current_user
    @pet = current_user.pets.new(pet_params)
    if @pet.save
      flash[:notice] = 'You have a new pet!'
      redirect_to(user_pets_path)
    else
      flash[:alert] = "Pet couldn't be saved"
      @errors = @pet.errors.full_messages
      render 'new'
    end
  end

  def edit
    @user = current_user
    @pet = Pet.find(params[:id]) 
  end

  def update
    @user = current_user
    @pet = Pet.find(params[:id])
    if @pet.update_attributes(pet_params)
      flash[:notice] = "Pet updated!"
      redirect_to(user_pets_path)
    else
      flash[:alert] = "Pet couldn´t be updated"
      @errors = @pet.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    flash[:notice] = "Pet deleted"
    redirect_to(user_pets_path)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :age, :avatar)
  end

end
