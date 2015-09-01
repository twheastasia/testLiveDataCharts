class LivedataController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]
  @@data = {"cpu"=>"0", "memory"=>"0", "flow"=>"0", "timestamp_local"=>"1441077235940"}
  @@history_data = []

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
    @@data = params
    @@history_data.push(@@data)
    #@data = rand 20
    #redirect_to index
  end


end
