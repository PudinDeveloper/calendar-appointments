class Patient < ApplicationRecord
  has_many :medical_histories, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthday, presence: true
  validates :email, presence: true
end
