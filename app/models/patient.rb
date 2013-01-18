class Patient < ActiveRecord::Base
  attr_accessible :address, :dob, :first_name, :last_name, :phone

	#Relationships
	has_many :doctors, :through => :patient_doctors

	#Validations
	validates_uniqueness_of :phone
	before_save :phone
	
	#Scopes

	#Constants

	#Methods
	def phone=(num)
	  num.gsub!(/\D/, '') if num.is_a?(String)
	  self[:phone] = num.to_i
	end

end
