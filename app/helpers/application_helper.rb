module ApplicationHelper
  def volunteer_or_ngo_path (user)
    if user.volunteer.present?
      volunteers_path
    else
      ngos_path
    end
  end
end
