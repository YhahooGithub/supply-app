class Squadron < ActiveRecord::Base
	has_many :debts
  	belongs_to :wing
        has_many :sq_acs
	has_many :aircraftnumbers
	
  def display_wing
    return wing.name unless wing.nil?
  end
  

end
