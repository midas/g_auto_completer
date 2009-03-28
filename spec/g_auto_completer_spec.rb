require File.dirname(__FILE__) + '/spec_helper.rb'

describe "Guilded Auto Completer" do
  
  it "should load Rails" do
    defined?( ActionView::Base ).should_not eql( nil )
    defined?( ActiveRecord::Base ).should_not eql( nil )
  end
  
  it "should include GAutoCompleter::ViewHelpers in ActionView::Base" do
    ActionView::Base.include?( GAutoCompleter::ViewHelpers ).should eql( true )
  end
  
end
