require "sinatra/base"
require "haml"

class FooApp < Sinatra::Base
  get "/" do
    haml '%a{:href => url("/double")} Double'
  end

  get "/double" do
    "Here we double numbers"
  end

  get "/double/:value" do
    (params["value"] * 2).to_s
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
