require 'sinatra'
require 'sass'
require 'haml'

get '/', provides: :html do
  haml :blog
end
