class Relation < ActiveRecord::Base
	belongs_to :thing
	belongs_to :related_to_thing, :class_name => 'Thing', :foreign_key => :related_to_thing_id
end
