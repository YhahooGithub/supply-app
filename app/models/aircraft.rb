class Aircraft < ActiveRecord::Base
	has_many :sq_acs
	has_many :aircraftnumbers
end

