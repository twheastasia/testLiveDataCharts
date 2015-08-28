class LivedataController < ApplicationController
  @data

  def index 
    #render nothing: true
    create
    render :json => @data
  end
  
  def create
    @data = rand 20
    
  end


end
