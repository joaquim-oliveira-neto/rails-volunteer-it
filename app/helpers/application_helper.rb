module ApplicationHelper
  def volunteer_or_ngo_signed_in?
    if user_signed_in?
      (current_user.ngo.present? || current_user.volunteer.present?) ? true : false
    else
      false
    end
  end

  def volunteer_or_ngo_path
    if current_user.volunteer.present?
      volunteers_path
    else
      ngos_path
    end
  end
end
