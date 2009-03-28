module GAutoCompleter
  module ViewHelpers
    
    def g_auto_completer( form, field, *args )
      options = args.extract_options!
      options[:id] ||= "#{field}_auto_complete"
      options[:class] ||= "auto_completer"
      options[:stylish] ||= false

      raise ArgumentError, "g_auto_completer requires option 'type'" if options[:type].nil?
      
      Guilded::Guilder.instance.add( :auto_completer, options, ['jquery/jquery-completomatic-0.1.min.js'] )
      
      text_field_cls = options[:stylish] ? '' : options[:class].to_s
      text_field_cls << ( options[:text_field_class].nil? ? '' : ((options[:stylish] ? '' : ' ') + options[:text_field_class].to_s) )
      
      the_text_field = form.text_field( field, :class => "#{text_field_cls}" ) #"<input type=\"text\" class=\"city acfb-input\"/>"
      return the_text_field unless options[:stylish]
       
      html = ""
      tag_list = form.object.send( field.to_sym )
      
      html << "<ul id=\"#{options[:id]}\" class=\"#{options[:class]}\">"
      tag_list.each { |tag| html << "<li class=\"c-data\"><span>#{tag.name}</span><img class=\"c-del\" src=\"delete.gif\"/></li>" }
      html << the_text_field
      html << "</ul>"
      
      return html
    end
    
  end
end