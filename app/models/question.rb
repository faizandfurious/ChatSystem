class Question < ActiveRecord::Base
  attr_accessible :keyword


	#Relationships
	has_many :patients, :through => :patient_questions

	#Validations

	#Scopes

	#Constants

	#Methods


end
