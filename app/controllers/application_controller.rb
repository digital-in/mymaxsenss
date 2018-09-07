class ApplicationController < ActionController::Base

	private
		def logged_in?
  			@current_user ||= User.find(session[:user_id]) if session[:user_id]
		end
		def human_boolean(boolean)
   	 		boolean ? 'Oui' : 'Non'
		end
		def is_archive_boolean(boolean)
   	 		boolean ? 'archive' : 'actif'
		end
		def datefr(mydatetime)
   	 		mydatetime.to_time.strftime('%d/%m/%Y')
		end
		def jourtxt(integer)
   	 		days = {
   	 			7 => "Dimanche",
				1 => "Lundi", 
				2 => "Mardi",
				3 => "Mercredi",
				4 => "Jeudi",
				5 => "Vendredi",
				6 => "Samedi"}
			"#{days[integer]}"
		end
	helper_method :logged_in?, :human_boolean, :is_archive_boolean, :jourtxt, :datefr
end
