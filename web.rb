#!/usr/bin/env ruby -I ../lib -I lib
require 'sinatra'

data = ["try consulting an API", 
        "use more for loops", 
        "store the data in a hash table", 
        "reboot your computer", 
        "reverse the linked list", 
        "use stdout instead of stderr", 
        "don't use C", 
        "make a new array", 
        "fix the makefile",
        "dereference a pointer",
        "add more comments",
        "use more semaphores",
        "create a new API",
        "just use a bubblesort",
        "commit your code",
        "put your data on a binary tree",
        "make more pointers"]

get '/' do
  erb :default, :locals => { :suggestion => data.sample }
end

__END__

@@ layout
<html>
  <head>
    <meta charset="utf-8" />
    <title>What the fuck is wrong with my code?</title>
    <style type="text/css">
      body {
        font: bold 60px Helvetica;
        text-transform: uppercase;
        padding: 30px;
        width: 650px;
        margin: 0px auto;
      }
      
      h1 {
        font-size: 60px;
        margin: 0px;
        padding: 0px;
      }
      
      p {
        font-family: consolas, courier;
        font-weight: normal;
        text-transform: lowercase;
        margin: 0px;
      }
      
      a {
        color: #aaaaaa;
        font-size: 36px;
      }
    </style>
  </head>
  <body>
    <h1>what the fuck is wrong with my code</h1>
    <br />
    <%= yield %>
  </body>
</html>

@@ default
<p><%= suggestion %></p>
<br />
<a href="/">that didn't fucking work</a>