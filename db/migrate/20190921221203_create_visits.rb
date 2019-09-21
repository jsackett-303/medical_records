class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.references :patient, foreign_key: true
      t.references :provider, foreign_key: true
      t.datetime :visit_date
      t.text :notes

      t.timestamps
    end
  end
end
