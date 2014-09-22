class Proyect < ActiveRecord::Base
	include PublicActivity::Model
	tracked owner: ->(controller,model) { controller && controller.current_user}

	  has_many :tareas
	  accepts_nested_attributes_for :tareas, allow_destroy: true
end
