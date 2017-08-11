module ApplicationHelper
  def volunteer_or_ngo_signed_in?
    if user_signed_in?
      (current_user.ngo.present? || current_user.volunteer.present?) ? true : false
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

  def volunteer_or_ngo
    current_user.volunteer.present? ? current_user.volunteer : current_user.ngo

  end

  def user_photo
    if volunteer_or_ngo.photo.present?
      cl_image_path volunteer_or_ngo.photo
    else
      current_user.facebook_picture_url || "user_image_300x300.png"
    end
  end

end
