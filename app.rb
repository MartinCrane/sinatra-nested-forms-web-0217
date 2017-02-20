require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
        erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do

      @pirate_obj = Pirate.new(params[:pirate])

      ship_array = params[:pirate][:ships]
      puts ship_array.class
      puts ship_array
      ship_array.each do |ship|
        new_ship = Ship.new(ship)
      end

      @ships = Ship.all

      erb :"pirates/show"
    end
  end
end
