class WelcomeController < ApplicationController
  
  #@data = Hash.new
  #require 'Math'

  def index
    @count = 20
    @data = Hash.new
    if @data.length() == 0
      generateData
    end
    @currentData = getData
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

end
