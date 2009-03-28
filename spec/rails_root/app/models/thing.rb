class Thing < ActiveRecord::Base
  
  def tag_list
    ['red','green','blue']
  end
  
  def tag_sentence
    tag_list.join( ',' )
  end
  
end