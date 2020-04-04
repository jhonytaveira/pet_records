class SerializableMedicalRecord < JSONAPI::Serializable::Resource
  type 'medical_records'

  belongs_to :pet
end
