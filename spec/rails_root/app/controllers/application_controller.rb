class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery #:secret => 'b0a876313f3f9195e9bd01473bc5cd06'
end