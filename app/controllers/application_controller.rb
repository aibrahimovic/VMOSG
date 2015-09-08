class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :checkAdmin

  def checkAdmin
  	@admin = User.find_by(id: session[:admin_id])
  end

  def checkPriviledge 
  	url = request.url 

  	if @admin.nil?
  		redirect_to admin_path 
  	end
  end

  def getYears

    this_year = Time.now.year #2015
    @years = []
    @startYears = []
    @startYears << this_year
    next1 = this_year + 1
    next2 = next1 + 1
    @years << next2
    @years << next1
    @years << this_year
    15.times do |i| 
      this_year = this_year - 1
      @years << this_year
      @startYears << this_year
    end



  end

end
