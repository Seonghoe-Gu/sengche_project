class Users::RegistrationsController < Devise::RegistrationsController
before_filter :configure_sign_up_params, only: [:create]
before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :nickname
    devise_parameter_sanitizer.for(:sign_up) << :sex
    devise_parameter_sanitizer.for(:sign_up) << :img
    devise_parameter_sanitizer.for(:sign_up) << :birth_year
    devise_parameter_sanitizer.for(:sign_up) << :birth_month
    devise_parameter_sanitizer.for(:sign_up) << :birth_day
    devise_parameter_sanitizer.for(:sign_up) << :sports
    devise_parameter_sanitizer.for(:sign_up) << :oneline
    devise_parameter_sanitizer.for(:sign_up) << :profile
    devise_parameter_sanitizer.for(:sign_up) << :badminton
    devise_parameter_sanitizer.for(:sign_up) << :running
    devise_parameter_sanitizer.for(:sign_up) << :cycle
    devise_parameter_sanitizer.for(:sign_up) << :bowling
    devise_parameter_sanitizer.for(:sign_up) << :pingpong
    devise_parameter_sanitizer.for(:sign_up) << :soccer
    devise_parameter_sanitizer.for(:sign_up) << :jokgu
    devise_parameter_sanitizer.for(:sign_up) << :tennis
    devise_parameter_sanitizer.for(:sign_up) << :pocket
    
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
