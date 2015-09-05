class AdminsController < ApplicationController
  


  def login
  end

  def main


  end

  def checkUser 
  	username = params[:username]
  	password = params[:password]

  	u = User.find_by(username: username)
  	
  	if !u.nil? && u.username == username
  		if u.password == password
  			status = 'OK'
  		else 
  			status = 'Pogresan password'
  		end
  	else
  		status = 'Pogresan username'
  	end

  	if status != 'OK'
  		render json: { status: status }
  	else
	  	render js: %(window.location.pathname='#{admin_main_path}')
	end
  end



  def logout
  end
end
