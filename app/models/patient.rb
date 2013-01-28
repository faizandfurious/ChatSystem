class Patient < ActiveRecord::Base
  attr_accessible :address, :dob, :first_name, :last_name, :phone, :identifier

	#Relationships
	has_many :doctors, :through => :patient_doctors

	#Validations
	before_validation :phone

	validates :address, :presence => true
	validates :dob, :presence => true
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :phone, :presence => true, :uniqueness => true, :numericality => true, :length => {
		:minimum => 10,
		:maximum => 11,
		:too_short => "must have at least 10 numbers",
		:too_long  => "must have at most 11 numbers"
	}

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