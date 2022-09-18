class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :dob])

        devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, 
        :dob, :email, :password])
        end
        
        def default_url_options
            {locale: I18n.locale}
        end
        def set_locale
            I18n.locale = extract_locale || I18n.default_locale
        end
        
        def extract_locale
            parsed_locale = params[:locale]
            I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
        end
end
