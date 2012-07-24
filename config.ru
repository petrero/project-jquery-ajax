Dir['vendor/**/lib'].each do |libdir|
  $: << libdir
end

require "sinatra"
require "app"

require 'sass/plugin/rack'
use Sass::Plugin::Rack

run Sinatra::Application
