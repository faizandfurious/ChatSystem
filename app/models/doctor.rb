class Doctor < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me
	attr_accessible :first_name, :last_name, :password, :username

	#Relationships
	has_many :patients, :through => :patient_doctors

	#Validations
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :password, :confirmation => true, :length => { :minimum => 4, :too_short => "must have at least 4 characters"}
	validates :password_confirmation, :presence => true
	validates :username, :presence => true, :format => {:with => /^[-\w\._@]+$/i, :message => "should only contain letters, numbers, or .-_@"}, :uniqueness => true
	validates :email, :presence => true, :format => {:with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))$/i, :message => "is invalid"}, :uniqueness => true
	
	#Scopes

	#Constants

	#Methods



end
