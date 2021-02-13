class ApplicationController < ActionController::Base
  include CurrentUser

  before_action :snakeize_params

  private

    def snakeize_params
      params.deep_snakeize!
    end
end
