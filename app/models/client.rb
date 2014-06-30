class Client < ActiveRecord::Base
	has_many :sales


#Solo hay que comenzar por poner aqui en este apartado las columnas que se requienren validan recordemos que no todas son
#ne cesarias para que la insercion sea exitosa solo pero hay que tener cuidado con los integer y los float 
# despues dirigase a el controlador y se debe insertar una un if en el create para poder validar al usuario
#a continuacion agrege el codigo en cada el form del controlador 
#modifique los div y agregar el span

	validates :nombreClient,  :presence => { message: "No puede dejarse en blanco" }
	validates :telefonoClient, length: { in:7..12, message:"Debe contener entre 7 y 12 caracteres"}
	validates :telefonoClient, numericality: {only_integer: true, message:"Caracteres entre 0 y 9" }
end
