module UsersHelper
  def get_avatar user
    if user.picture.present? && user.picture.picture_link?
      user.picture.picture_link.url
    else
      Settings.avatar
    end
  end
end
