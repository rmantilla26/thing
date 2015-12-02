class Relation < ActiveRecord::Base

	ASSOCIATIONS_TYPE = [ ["belongs_to",1],["has_one",2],["has_many",3],["has_many :through",4],["has_one :through",5],["has_and_belongs_to_many",6]]
	
	belongs_to :thing
	belongs_to :related_to_thing, :class_name => 'Thing', :foreign_key => :related_to_thing_id

	validates :thing, :related_to_thing, :association_type, presence: true

	def association_type_name
		puts association_type.inspect
		ASSOCIATIONS_TYPE[association_type-1][0]
	end
end
