class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  enum status: [:active, :inactive, :cancelled]
end
