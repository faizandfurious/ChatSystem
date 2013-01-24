class PatientQuestion < ActiveRecord::Base
  attr_accessible :created_on, :patient_id, :question_id, :received_data

	#Relationships
	belongs_to :patient
	belongs_to :question

	#Validations
	validates_associated :patient
	validates_associated :question

	#Scopes

	#Constants

	#Methods


end
