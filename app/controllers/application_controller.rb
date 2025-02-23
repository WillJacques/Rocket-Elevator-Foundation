class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def access_denied(exception)
        redirect_to index_path, alert: exception.message
    end

    before_action :set_current_user

    def set_current_user
        AdminUser.current = current_admin_user
    end
end
