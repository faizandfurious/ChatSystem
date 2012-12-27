class PatientQuestion < ActiveRecord::Base
  attr_accessible :created_on, :patient_id, :question_id, :received_data

	#Relationships
	belongs_to :patient
	belongs_to :question

	#Validations

	#Scopes

	#Constants

	#Methods


end
