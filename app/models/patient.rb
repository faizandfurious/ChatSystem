class Patient < ActiveRecord::Base
  attr_accessible :address, :dob, :first_name, :last_name, :phone
end
