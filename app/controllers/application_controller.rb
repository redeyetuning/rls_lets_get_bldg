class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def hello
	render html: "Hello rls_lets_get_bldg"
end

end