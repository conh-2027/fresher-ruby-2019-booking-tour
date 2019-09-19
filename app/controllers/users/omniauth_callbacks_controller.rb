class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    generic_callback Settings.omniauth.facebook
  end

  def generic_callback provider
    user = User.find_by uid: request.env["omniauth.auth"].uid
    
    if user.present?
      sign_in user
      redirect_to after_sign_in_path_for(user)
    else
      @user = User.from_omniauth request.env["omniauth.auth"]
    
      if @user.present?
        sign_in_and_redirect @user, event: :authentication
       
        if is_navigational_format?
          set_flash_message(:notice, :success, kind: provider.capitalize)
        end
      else
        session["devise.#{provider}_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
    end
  end
end
