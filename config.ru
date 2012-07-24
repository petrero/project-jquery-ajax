Dir['vendor/**/lib'].each do |libdir|
  $: << libdir
end

require "sinatra"
require File.join(File.dirname(__FILE__), 'app')


require 'sass/plugin/rack'
use Sass::Plugin::Rack

run Sinatra::Application
