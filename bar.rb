require "sinatra"
require "haml"

get "/" do
  haml '%a{:href => url("/triple")} Triple'
end

get "/triple" do
  "Here we triple numbers"
end


get "/triple/:value" do
  (params["value"] * 3).to_s
end
