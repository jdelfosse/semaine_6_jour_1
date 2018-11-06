class AccueilleController < ApplicationController

	def club
		if session[:user_id]
			@all_users = User.all
		else
	        flash[:erreur] = "Ce contenu n'est accessible qu'aux personnes connecter"	
		  	redirect_to "/user/new"
		end
	end

end
