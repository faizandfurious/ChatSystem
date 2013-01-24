class Patient < ActiveRecord::Base
  attr_accessible :address, :dob, :first_name, :last_name, :phone, :identifier

	#Relationships
	has_many :doctors, :through => :patient_doctors

	#Validations

	validates_uniqueness_of :phone
	validates_length_of :phone, :minimum => 10, :maximum => 11

	before_save :phone

	#Scopes

	#Constants

	#Methods
	def phone=(num)
		num.gsub!(/\D/, '') if num.is_a?(String)

		if (num.length == 10)
			num = '(%s) %s-%s' % [ num[0,3], num[3,3], num[6,4] ]
		else
			num = '%s(%s) %s-%s' % [ num[0], num[1,3], num[4,3], num[7,4] ]
		end
		self[:phone] = num
	end

	def formatted_dob
		return dob.strftime("%B %e, %Y")
	end
end