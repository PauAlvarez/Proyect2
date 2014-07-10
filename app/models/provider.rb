class Provider < ActiveRecord::Base

  validates :NombreProvider, :presence => { message: "Por favor introduzca el nombre del proveedor" }
  validates :direccionProvider, :presence => { message: "Por favor introduzca la direccion del proveedor" }

end
