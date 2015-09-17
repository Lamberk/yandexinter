class JsonController < ApplicationController

  def index

    createJson
  
  end

  def createJson

    json = File.read('generated.json')
    parsejson = JSON.parse(json)

    jsonHash = Array.new
    
    for i in 0..parsejson.length-2
    
    jsonHash[i] = Hash[ "from" => "#{parsejson[i].values[0]}", "to" => "#{parsejson[i+1].values[0]}"]

    end

    render :json => jsonHash.shuffle
 
  end

end