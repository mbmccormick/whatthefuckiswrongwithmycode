#!/usr/bin/env ruby -I ../lib -I lib
require 'sinatra'

data = ["try consulting an API", "use more for loops", "store the data in a hash table"]

get '/' do
  erb :default, :locals => { :suggestion => data.sample }
end

__END__

@@ layout
<html>
  <head>
    <meta charset="utf-8" />
    <title>what the fuck is wrong with my code</title>
    <style type="text/css">
      body {
        font-family: Helvetica;
      }
    </style>
  </head>
  <body>
    <h1>what the fuck is wrong with my code></h1>
    <%= yield %>
  </body>
</html>

@@ default
<p><%= suggestion %></p>