require 'rubygems'
require 'sinatra'

get "/" do
  %{
   <html>
     <head></head>
	 <body>
	   <h1>Hello!</h1>
	 <body>
   <html>
  }
end