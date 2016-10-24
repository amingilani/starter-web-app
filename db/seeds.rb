unless Rails.env == 'production'
  dummy = User.create(
    username: 'dummy',
    email: 'dummy@example.com',
    password: 'password',
    password_confirmation: 'password',
    confirmed_at: Time.zone.today
  )
end
