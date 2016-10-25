# frozen_string_literal: true
class Users::ConfirmationsController < Devise::ConfirmationsController
  layout 'user'
  # GET /resource/confirmation/new
  def new
    self.resource = resource_class.send_confirmation_instructions(resource_params)
    yield resource if block_given?
    flash[:alert] = resource.errors.full_messages.to_sentence
    if successfully_sent?(resource)
      respond_with({}, location: after_resending_confirmation_instructions_path_for(resource_name))
    else
      respond_with(resource)
    end
  end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    super
  end

  protected

  # The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(_resource_name)
    new_user_registration_path
  end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
