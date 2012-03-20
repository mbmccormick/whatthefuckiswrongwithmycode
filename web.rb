#!/usr/bin/env ruby -I ../lib -I lib
require 'sinatra'

data = ["try consulting an API", "use more for loops", "store the data in a hash table"]

get '/' do
  data.random
end

