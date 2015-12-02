class Thing < ActiveRecord::Base
	
	has_many :properties
	has_many :relations
	has_many :app_things

	#validates :name, presence: true, uniqueness: true
  	
  	accepts_nested_attributes_for :properties, :reject_if  => :all_blank, update_only: true
  	accepts_nested_attributes_for :relations, :reject_if  => :all_blank, update_only: true


end
