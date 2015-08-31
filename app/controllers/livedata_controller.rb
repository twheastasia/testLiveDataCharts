class LivedataController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]
  @@data = 10

  def index 
    #render nothing: true
    #create
    #@data = rand 30
    puts "-------"
    puts @@data
    render :json => @@data
  end
  
  def create
    puts "=============="    
    @@data = params["cpu"]
    #@data = rand 20
    #redirect_to index
  end


end
