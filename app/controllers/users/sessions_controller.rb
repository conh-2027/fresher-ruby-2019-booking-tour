class Users::SessionsController < Devise::SessionsController

  protected

  def after_sign_in_path_for current_user
    if current_user.admin?
      admin_dashboard_path
    else
      root_url
    end
  end
end
