class CreateMedicalHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :medical_histories do |t|
      t.string :diagnosis
      t.date :consultation_date
      t.text :notes
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
