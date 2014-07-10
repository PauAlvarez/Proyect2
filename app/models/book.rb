class Book < ActiveRecord::Base
  belongs_to :provider
  belongs_to :category

validates :isbn, :presence => { message: "Introduzca el ISBN del libro" }
validates :claveinterna, :presence => { message: "Introduzca una clave para el libro" }
validates :claveinterna, :uniqueness => { :message => "Esta clave ya esta registrada" }
validates :titulo, :presence => { message: "Introduzca el titulo del libro" }
validates :autor, :presence => { message: "Introduzca el autor del libro" }
validates :editorial, :presence => { message: "Introduzca la editorial del libro" }
validates :stock, :presence => {only_integer: true, message:"Especifique el numero de ejemplares actuales" }
validates :precio, :presence => {only_float: true, message:"Introduzca el precio del libro" }
validates :provider_id, :presence => { message: "Seleccione el proveedor que le proporciona el libro" }
validates :category_id, :presence => { message: "Seleccione la categoria a la que pertenece el libro" }
end
