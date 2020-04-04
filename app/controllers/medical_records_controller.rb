class MedicalRecordsController < ApplicationController
  before_action :set_medical_record, only: [:destroy]

  def index
    @q = MedicalRecord.ransack(params[:q])
    @medical_records = @q.result(distinct: true)
  end

  def new
    @medical_record = MedicalRecord.new
  end

  def create
    @medical_record = MedicalRecord.new(medical_record_params)

    if @medical_record.save
      redirect_to new_medical_record_path, notice: t('.messages.success')
    else
      render :new
    end
  end

  def destroy
    @medical_record.destroy
    redirect_to medical_records_url, notice: t('.messages.success')
  end

  private

  def set_medical_record
    @medical_record = MedicalRecord.find(params[:id])
  end

  def medical_record_params
    params.require(:medical_record).permit(:pet_id, :patient_symptoms, :treatment)
  end
end
