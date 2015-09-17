class JsonController < ApplicationController

  def index

    createJson
  
  end

  def light

    data = [     
      {
        "from": "MOSCOW",
        "to": "WARSAWA"
      },
      {
        "from": "LION",
        "to": "PARIS"
      },
      {
        "from": "DELI",
        "to": "SAMARA"
      },
      {
        "from": "WARSAWA",
        "to": "DELI"
      },
      {
        "from": "PARIS",
        "to": "NEWYORK"
      },
      {
        "from": "SAMARA",
        "to": "LION"
      }
]  
    response.headers['Content-type'] = "text/plain; charset=utf-8"
    render :json => data

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