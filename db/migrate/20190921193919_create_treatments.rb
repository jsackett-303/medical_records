class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.references :patient, foreign_key: true
      t.references :medication, foreign_key: true
      t.string :dosage
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
