class PatientQuestion < ActiveRecord::Base
  attr_accessible :created_on, :patient_id, :question_id, :received_data
end
