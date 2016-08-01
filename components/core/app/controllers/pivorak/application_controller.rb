module Pivorak
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper_method :admin?

    before_action :admins_only!, except: %i[index show], unless: :devise?

    def admin?
      current_user && current_user.admin?
    end

    def admins_only!
      unless admin?
        flash[:alert] = 'Accsess denied!'
        redirect_to root_path
      end
    end

    def devise?
      params[:controller] == 'devise/sessions'
    end
  end
end
