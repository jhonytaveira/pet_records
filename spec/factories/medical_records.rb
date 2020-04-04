FactoryBot.define do
  factory :medical_record do
    pet
    patient_symptoms { 'Dor de Barriga' }
    treatment { 'Ingerir antibiótico' }
  end
end
