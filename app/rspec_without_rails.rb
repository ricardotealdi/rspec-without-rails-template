module RspecWithoutRails
  autoload :Test, 'entities/test'
  autoload :MyService, 'services/my_service'
  LIBDIR      = File.expand_path(File.dirname(__FILE__))
end

$LOAD_PATH.unshift RspecWithoutRails::LIBDIR unless $LOAD_PATH.include? RspecWithoutRails::LIBDIR