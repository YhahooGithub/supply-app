class SqAc < ActiveRecord::Base
  belongs_to :squadron
  belongs_to :aircraft
end
