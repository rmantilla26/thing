class App < ActiveRecord::Base
	has_many :app_things
	has_many :things , through: :app_things

	accepts_nested_attributes_for :app_things, :reject_if  => :all_blank, update_only: true
end
