# frozen_string_literal: true
class Users::UnlocksController < Devise::UnlocksController
  layout 'user'
  # GET /resource/unlock/new
  def new
    super
  end

  # POST /resource/unlock
  def create
    self.resource = resource_class.send_unlock_instructions(resource_params)
    yield resource if block_given?

    flash[:alert] = resource.errors.full_messages.to_sentence
    if successfully_sent?(resource)
      respond_with({}, location: after_sending_unlock_instructions_path_for(resource))
    else
      respond_with(resource)
    end
  end

  # GET /resource/unlock?unlock_token=abcdef
  # def show
  #   super
  # end

  protected

  # The path used after sending unlock password instructions
  def after_sending_unlock_instructions_path_for(resource)
  end

  # The path used after unlocking the resource
  def after_unlock_path_for(resource)
    super(resource)
  end
end
