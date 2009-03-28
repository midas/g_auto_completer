class AutoCompleterAssetsGenerator < Rails::Generator::Base
  def initialize(runtime_args, runtime_options = {})
    super
  end

  def manifest
    record do |m|
      m.file "guilded.auto_completer.js", "public/javascripts/guilded.auto_completer.js"
      m.file "guilded.auto_completer.min.js", "public/javascripts/guilded.auto_completer.min.js"
      m.directory "public/javascripts/jquery"
      #m.file "jquery.autocomplete.js", "public/javascripts/jquery/jquery-autocomplete.js"
      #m.file "jquery.autocomplete.min.js", "public/javascripts/jquery/jquery-autocomplete.min.js"
      #m.file "jquery.autocompletefb.js", "public/javascripts/jquery/jquery-autocompletefb.js"
      #m.file "jquery.autocompletefb.min.js", "public/javascripts/jquery/jquery-autocompletefb.min.js"
      #m.file "jquery-bgiframe.js", "public/javascripts/jquery/jquery-bgiframe.js"
      #m.file "jquery.bgiframe.min.js", "public/javascripts/jquery/jquery-bgiframe.min.js"
      #m.file "jquery.dimensions.js", "public/javascripts/jquery/jquery-dimensions.js"
      #m.file "jquery.dimensions.min.js", "public/javascripts/jquery/jquery-dimensions.min.js"
      m.directory "public/stylesheets/guilded/auto_completer"
      m.directory "public/stylesheets/guilded/auto_completer/default"
      m.file "default.css", "public/stylesheets/guilded/auto_completer/default.css"
      m.file "delete.gif", "public/stylesheets/guilded/auto_completer/default/delete.gif"
    end
  end
end