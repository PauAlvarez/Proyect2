class Category < ActiveRecord::Base

 validates :nombreCategoria, :presence => { message: "Introduzca un nombre" }
 validates :nombreCategoria, :uniqueness => { :message => "La categoria ya esta registrada" }
 validates :descripcionCategoria, :presence => { message: "No deje en blanco el campo" }
end
