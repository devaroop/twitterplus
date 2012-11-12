class UserSession < Authlogic::Session::Base
  
#create virtual attributes for user_session model
  login_field :username
  password_field :password

end
