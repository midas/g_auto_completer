require File.dirname(__FILE__) + '/../spec_helper.rb'

describe "Guilded Auto Completer View Helpers" do
  
  before(:each) do
    @thing = Thing.new
  end
  
  it "ActionView::Base should respond to g_auto_completer" do
    ActionView::Base.respond_to?( :g_auto_completer ).should eql( true )
  end
  
  it "should raise ArgumentError exception if the 'tag_list_attr' is incorrect" do
    ActionView::Base.send( :g_auto_completer, nil, @thing, :tag_list_attr => :some_incorrect_attribute )
  end
  
end