require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :dieta

desc "Ejecutar las espectativas de la clase Dieta"
task :dieta do
  sh "rspec -I. spec/dieta_spec.rb"
end
