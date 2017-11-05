require 'opal'
require 'opal-jquery'

desc 'Build application'
task :build do
  Opal.append_path './app'
  File.binwrite 'declension.js', Opal::Builder.build('declension').to_s
end
