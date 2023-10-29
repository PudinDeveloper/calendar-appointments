json.extract! medical_history, :id, :diagnosis, :consultation_date, :notes, :patient_id, :created_at, :updated_at
json.url medical_history_url(medical_history, format: :json)
