# frozen_string_literal: true
FactoryGirl.define do
  factory :user do
    username    { Faker::Internet.user_name }
    email       { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'
    confirmed_at Time.zone.today
  end
end
