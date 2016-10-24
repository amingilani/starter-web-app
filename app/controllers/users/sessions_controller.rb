# frozen_string_literal: true
class Users::SessionsController < Devise::SessionsController
  layout 'user'
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  def added_attrs
    %i(username email password remember_me)
  end

  def after_sign_up_path_for(_resource=nil)
    dashboard_show_path
  end

  def after_sign_out_path_for(_resource=nil)
    root_path
  end
end
