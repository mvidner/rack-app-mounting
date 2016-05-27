# -*- ruby -*-
require "./foo"
require "./bar"

run Rack::URLMap.new(
  "/" => FooApp.new,
  "/bar" => BarApp.new
)
