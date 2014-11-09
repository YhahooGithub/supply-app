class Wing < ActiveRecord::Base
  	has_many :squadrons
	has_many :sq_acs, through: :squadrons
end
