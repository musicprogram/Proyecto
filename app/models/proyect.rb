class Proyect < ActiveRecord::Base
	  has_many :tareas
	  accepts_nested_attributes_for :tareas, allow_destroy: true
	  def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
	  end

end
