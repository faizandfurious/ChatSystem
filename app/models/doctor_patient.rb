class DoctorPatient < ActiveRecord::Base
  attr_accessible :doctor_id, :patient_id
end
