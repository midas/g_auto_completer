old_verbose, $VERBOSE = $VERBOSE, nil
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION
$VERBOSE = old_verbose
 
require File.join(File.dirname(__FILE__), 'boot')
 
Rails::Initializer.run do |config|
  config.log_level = :debug
  config.cache_classes = false
  config.whiny_nils = true
  
  config.action_controller.session = {
    :session_key => '_test_session',
    :secret      => 'a3e2a5jt771bb964a4250c21f8d083f9ddb224d455171dcba55518e74af43366e52e3f239773f90aed0ab6caf6554f051504ce7232599d066150dbabff0f1654'
  }
end