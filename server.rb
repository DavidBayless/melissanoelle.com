require 'sinatra/base'
require 'sass'
require 'sass/plugin/rack'
require 'haml'
require 'date'
require 'redcarpet'

class Website < Sinatra::Base
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

get '/', provides: :html do
  haml :blog
end

get '/events', provides: :html do
  haml :events_speaking
end

# slides speaker notes
get '/javascripts/notes/notes.html', provides: :html do
  send_file 'public/javascripts/notes/notes.html'
end

# slides

get '/slides/diversity-in-coding', provides: :html do
  haml :'slides/diversity_in_coding', layout: :slides_layout
end

get '/slides/intermediate-javascript-having-fun-in-the-browser', provides: :html do
  haml :'slides/intermediate_javascript_fun_browser', layout: :slides_layout
end

get '/slides/command-line-git', provides: :html do
  haml :'slides/command_line_git', layout: :slides_layout
end

get '/slides/merging-stashing', provides: :html do
  haml :'slides/merging_stashing', layout: :slides_layout
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

end
