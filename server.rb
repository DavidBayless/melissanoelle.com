require 'sinatra'
require 'sass'
require 'haml'

get '/', provides: :html do
  haml :blog
end

get '/events', provides: :html do
  haml :events_speaking
end

get '/slides', provides: :html do
  haml :slides
end

get '/work', provides: :html do
  haml :work
end

get '/contact', provides: :html do
  haml :contact_me
end
