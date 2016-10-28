# frozen_string_literal: true
require 'rails_helper'

RSpec.feature 'SignUps', type: :feature do
  background do
    @user = build :user
  end

  it 'sign up when you try to sign up' do
    visit new_user_registration_path
    within('#new_user') do
      fill_in 'Username', with: @user.username
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      fill_in 'Confirm password', with: @user.password
    end
    click_button 'Sign up'
    expect(page).to have_content "A message with a confirmation link has been \
    sent to your email address. Please follow the link to activate your account"
  end
end
