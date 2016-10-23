# Starter App

This is highly opinionated web app starter based on Ruby on Rails

## Features

* Rspec tests
* Simplecov for coverage
* Guard for easy development
* Live reload
* Rubocop
* HAML templating with haml-lint
* Devise powered authentication:
  * **Users:** end users
  * **Team:** staff and administrators
* Pundit powered authorization
* Yard documentation
* Automatically annotated models
* Semantic UI
* Config vars in `.env`
* Markdown documentation powered by Yard
* Favicon Generator Helper

### Creating a Favicon

This app comes with [Real Favicon Generator](https://realfavicongenerator.net/)
already integrated. Quick edit:

1. Change the options in `config/favicon.json`
2. Replace the image in 'app/assets/images/logo/logo.png'
3. Run `rails generate favicon`

If you've never used Real Favicon Generator, visit the web site and follow the
steps. Skip the part about editing the Gemfile.

Versions:

* Ruby 2.3
* Rails 5

System dependencies:

* Postgresql
* Rubocop
* Haml Lint
