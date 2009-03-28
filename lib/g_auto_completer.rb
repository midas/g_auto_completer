$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'g_auto_completer/view_helpers'

module GAutoCompleter
  VERSION = '0.0.1'
end

if defined?( ActionView::Base )
  ActionView::Base.send( :include, GAutoCompleter::ViewHelpers ) unless ActionView::Base.include?( GAutoCompleter::ViewHelpers )
end