module ApplicationHelper
  def volunteer_or_ngo_signed_in?
    if user_signed_in?
      (current_user.ngo.present? && current_user.ngo.id.present? || current_user.volunteer.present? && current_user.volunteer.id.present?)
    else
      false
    end
  end

  def volunteer_or_ngo_path(action)
    if current_user.volunteer.present?
      action == :index ? volunteers_path : edit_volunteer_path(current_user.volunteer)
    else
      action == :index ? ngos_path : edit_ngo_path(current_user.ngo)
    end
  end

  def volunteer_or_ngo(user)
    user.volunteer.present? ? user.volunteer : user.ngo

  end

  def user_photo(user)
    if volunteer_or_ngo(user).photo.present?
      cl_image_path volunteer_or_ngo(user).photo, transformation: [
        {width: 300, height: 300, gravity: "face"}, {width:300, crop:"scale"}]
    elsif user.facebook_picture_url.present?
      user.facebook_picture_url + "&widht=300&height=300"
    else
      "user_image_300x300.png"
    end
  end

end
