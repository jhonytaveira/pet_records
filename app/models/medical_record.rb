class MedicalRecord < ApplicationRecord
  belongs_to :pet

  validates :patient_symptoms, :treatment, presence: true
end
