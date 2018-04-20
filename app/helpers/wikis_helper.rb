module WikisHelper
  def can_make_wiki_private?
    current_user.admin? || current_user.premium?
  end

  def can_view_wiki?(w)
    current_user == w.user || !w.private?
  end
end
