class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #deshabilitar para permitir el registro del primer usuario
  before_action :authenticate_user! #deshabilitar para permitir el registro del primer usuario

 	rescue_from CanCan::AccessDenied do |exception| #en caso de que la autenticacion falle
 	redirect_to root_url, :alert => exception.message# envia a la pagina principal
 	end


 	#en caso de que no acepte los datos del modelo
  before_action do  
  resource = controller_name.singularize.to_sym
  method = "#{resource}_params"
  params[resource] &&= send(method) if respond_to?(method, true)
end  
 	

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, roles: [])}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:nombre, :email, :password, :current_password, :telefono, :direccion, :apellidos, roles:[]) }
  end


 
end
