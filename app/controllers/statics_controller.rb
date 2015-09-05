class StaticsController < ApplicationController
  

  def uporediGodinu(prva, druga) 
  	if prva <= druga 
  		return true
  	end

  	false
  end


  def home
  	@projects = Project.all
  	@neparni = []
  	@parni = []

  	res = @projects.sort_by do |item|
  	    item[:end]
  	end 
  	@projects = res

    	(0..@projects.length - 1).step(2).each do |index|
  	  @neparni << @projects[index]
  	  @parni << @projects[index+1]
  	end

    @main = Info.first
    @members = Member.all


  end
end
