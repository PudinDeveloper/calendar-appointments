class MedicalHistory < ApplicationRecord
  belongs_to :patient
  validates :diagnosis, presence: true
  validates :consultation_date, presence: true
  validates :notes, presence: true
  validates :patient_id, presence: true
end
