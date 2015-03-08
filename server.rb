require 'sinatra'

celebs = ["MJ", "Denzel", "Halle"]

get '/' do
	string = "<html><body><ul>"
	celebs.each {|celeb| string+= "<li>" + celeb + "</li>"}
	string += "</ul></body></html>"
end

get '/name' do
	erb :name, locals:{names: celebs}
end
