require "sinatra"
require "haml"

get "/" do
  haml '%a{:href => url("/double")} Double'
end

get "/double" do
  "Here we double numbers"
end


get "/double/:value" do
  (params["value"] * 2).to_s
end
