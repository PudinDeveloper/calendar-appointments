class Patient < ApplicationRecord
  has_many :medical_histories, dependent: :destroy
end
