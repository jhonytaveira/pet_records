class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to new_pet_path, notice: t('.create.messages.success')
    else
      render :new
    end
  end

  def medical_records
    @pet = Pet.find params[:pet_id]
    @medical_records = @pet.medical_records
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :birth_date, :breed, :kind)
  end
end
