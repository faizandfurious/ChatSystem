class Question < ActiveRecord::Base
  attr_accessible :keyword


	#Relationships
	has_many :patients, :through => :patient_questions

	#Validations
	validates :keyword, :presence => true

	#Scopes

	#Constants

	#Methods


end
