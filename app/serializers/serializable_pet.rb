class SerializablePet < JSONAPI::Serializable::Resource
  type 'pets'

  has_many :medical_records
end
