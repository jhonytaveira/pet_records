class CreateMedicalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records do |t|
      t.references :pet, foreign_key: true, index: true
      t.text :patient_symptoms, null: false
      t.text :treatment, null: false

      t.timestamps
    end
  end
end
