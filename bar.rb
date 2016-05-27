require "sinatra/base"
require "haml"

class BarApp < Sinatra::Base
  get "/" do
    haml '%a{:href => url("/triple")} Triple'
  end

  get "/triple" do
    "Here we triple numbers"
  end

  get "/triple/:value" do
    (params["value"] * 3).to_s
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
