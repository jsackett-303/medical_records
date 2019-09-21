class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.text :medication_name
      t.text :manufacturer

      t.timestamps
    end
  end
end
