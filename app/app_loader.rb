Dir["app/**/*.rb"].each do |file| 
  require File.expand_path file
end