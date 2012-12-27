class Patient < ActiveRecord::Base
  attr_accessible :address, :dob, :first_name, :last_name, :phone

	#Relationships
	has_many :doctors, :through => :patient_doctors

	#Validations

	#Scopes

	#Constants

	#Methods


end
