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
end
