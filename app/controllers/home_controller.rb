class HomeController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find params[:id]

    @medical_records = @pet.medical_records
  end
end
