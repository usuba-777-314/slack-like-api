module CurrentUser
  extend ActiveSupport::Concern

  def current_user
    User.find(3)
  end
end
