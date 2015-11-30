class Property < ActiveRecord::Base
  belongs_to :thing
  belongs_to :type
end
