class WelcomeController < ApplicationController
  
  #@data = Hash.new
  #require 'Math'
  @@post_url = 'http://192.168.199.180:3001/livedata'

  def index
    @count = 20
    @data = Hash.new
    if @data.length() == 0
      generateData
    end
    @url = @@post_url
  end

  def generateData
    currentSecond = Time.new.to_i
    1000.times do |index|
      @data[(currentSecond+index).to_s] = 10
    end
  end

  def getData
    currentSeconds = Time.new.to_i
    currentData = @data[currentSeconds.to_s]
    return currentSeconds*1000, currentData
  end
  
  def create 
    return 20
  end

  def new
    return 20
  end
end
