class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    events = Event.all #gets all events in array format so you need to convert to json
    p events
    events.to_json
  end

  #get single event
  get "/event/:pk" do
    event= Event.find_by(id: params[:pk])
    event.to_json
  end

  #post event
  post "/event/" do
    event= Event.create(
      name: params[:name],
      date: params[:date],
      venue: params[:venue],
      time: params[:time],
      price1: params[:price1],
      price2: params[:price2]
    )
    event.save
    {
      "Message": "Created Successfully",
      "Status": "HTTP_200_OK"
    }.to_json
  end

  # Patch Event
  patch "event/update/:id" do 
    event= Event.find_by(id: params[:id])
    event.update(
      name: params[:name],
      date: params[:date],
      venue: params[:venue],
      time: params[:time],
      price1: params[:price1],
      price2: params[:price2] 
    )
    event.to_json
  end

  #Delete a Event
  delete "/event/:id" do
    event= Event.find_by(id: params[:id])
    event.destroy
    {
      "Message":"Successfully deleted an Event",
      "Status":"HTTP_400"
    }
  end

end
