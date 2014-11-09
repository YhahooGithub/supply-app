class Aircraftnumber < ActiveRecord::Base
	belongs_to :aircraft
	belongs_to :squadron

	def display_aircraft
	  return aircraft.actype unless aircraft.nil?
	end

	def display_squadron
	  return squadron.sq unless squadron.nil?
	end
end
