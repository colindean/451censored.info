require 'bundler'
Bundler.require

get '/' do
  haml :index
end

get '/censored' do
  status 451
  headers "Link" => "<#{request.url}>; rel=blocked-by"
  haml :censored
end
