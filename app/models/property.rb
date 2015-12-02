class Property < ActiveRecord::Base
  
  belongs_to :thing
  belongs_to :type

  validates :thing, :type, presence: true
end
