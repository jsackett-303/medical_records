class CreatePatientDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_diagnoses do |t|
      t.references :patient, foreign_key: true
      t.references :provider, foreign_key: true
      t.references :diagnosis, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
