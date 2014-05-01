class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    auth = request.env['omniauth.auth']

    @user = User.find_by(uid: auth.uid, provider: auth.provider)
    if @user.nil?
      @user = User.create! uid: auth.uid, 
                           provider: auth.provider,
                           name: auth.info.name
    end 

    sign_in_and_redirect @user
  end

end
