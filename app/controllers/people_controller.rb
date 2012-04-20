class PeopleController < ApplicationController
 
before_filter :authenticate , :only => :show

 def index
 	@people = ["Ron","Oren","Idan"]
 end

 def show
 	@person = params[:id]
 end

 private
 def authenticate
 	if params[:id] != "Ron"
 		redirect_to people_url , :notice => "The page you are trying to access is restricted."
 	end
 end
end
