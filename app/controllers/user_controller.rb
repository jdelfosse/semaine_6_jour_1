class UserController < ApplicationController
	def create
	

		if (params[:password] != params[:verifpassword]) || (( params[:password] == "") ||  (params[:username] == "") ||  (params[:name] == ""))
		  redirect_to request.referrer
		    flash[:erreur] = "erreur de creation"		
		elsif User.where(email: params[:email].downcase).exists? ||  params[:email] == "" || (params[:email] =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i) == nil
		  redirect_to request.referrer
		  flash[:erreur] = "cette email exist deja ou n'est pas valable"	
		else
			User.create!(first_name: params[:username] , last_name: params[:name] , email: params[:email].downcase, password: params[:password]) 
	        session[:user_id] = User.where(first_name: params[:username] , last_name: params[:name] , email: params[:email].downcase, password: params[:password])[0]
			redirect_to "/user/new"
		    flash[:info] = "Compte bien créé, vous êtes maintenant connecté"			
  		end
  	end

  	def new
  		@all_users = User.all
  	end

  	def verif
		@current_user = User.where(email: params[:email].downcase, password: params[:password])
	    if @current_user.where(email: params[:email].downcase, password: params[:password]).exists?
	      session[:user_id] = @current_user[0]
	      flash[:info] = "Vous êtes maintenant connecté"
		  redirect_to request.referrer
	    else
	      flash[:erreur] = "Erreur de connection"	    	
		  redirect_to request.referrer
	    end
  	end

  	def deco
  		session[:user_id] = nil
  		flash[:deco] = "vous êtes bien deconnectés"
	    redirect_to request.referrer
  	end
end
