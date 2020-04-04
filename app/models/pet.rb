class Pet < ApplicationRecord
  extend Enumerize

  enumerize :kind, in: [:dog, :cat]

  has_many :medical_records

  validates :name, :breed, :kind, presence: true
end
