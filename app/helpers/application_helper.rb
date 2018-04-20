module ApplicationHelper

  def user_role_standard?
    current_user.role == 'standard'
  end
end
