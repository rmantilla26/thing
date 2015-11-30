class Thing < ActiveRecord::Base
	
	has_many :properties

	validates :name_es, :name_en, presence: true, uniqueness: true
  	accepts_nested_attributes_for :properties, :reject_if  => :all_blank

end
