class DoctorPatient < ActiveRecord::Base
	attr_accessible :doctor_id, :patient_id

	#Relationships
	belongs_to :doctor
	belongs_to :patient

	#Validations
	validates_associated :doctor
	validates_associated :patient
	
	#Scopes

	#Constants

	#Methods
end
