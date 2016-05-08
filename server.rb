require 'sinatra'
require 'sass'
require 'sass/plugin/rack'
require 'haml'
require 'date'
require 'redcarpet'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

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

# posts

get '/starting-with-git', provides: :html do
  haml :'posts/git_intro'
end
