# <img src="/app/assets/images/logo/logo.png" height="50px" /> Gilani's Starter App


This is my highly opinionated web app starter based on Ruby on Rails. I found myself heavily customizing Rails at the start of every project, so I created a starter with everything I like.

**>>> [Live Preview](https://gilani-starter.herokuapp.com) <<<**

## Details

### Preconfigured

* [Rspec](http://rspec.info/)
* [Guard](https://github.com/guard/guard)
* [HAML](http://haml.info/)
* [Postgresql](https://www.postgresql.org)
* [Livereload](https://github.com/johnbintz/rack-livereload)
* [Simplecov](https://github.com/colszowka/simplecov)
* [Rubocop](https://github.com/bbatsov/rubocop)
* [Devise](https://github.com/plataformatec/devise)
* [Pundit](https://github.com/elabs/pundit)
* [Yard](http://yardoc.org/)
* [Annotated Models](https://github.com/ctran/annotate_models)
* [Semantic UI](http://semantic-ui.com/)
* [dotenv](https://github.com/bkeepers/dotenv) and [config](https://github.com/railsconfig/config)
* [Real Favicon Generator](https://realfavicongenerator.net/)

### Versions

* Ruby 2.3
* Rails 5
* Bundler `~> 1.13.1`

### Dependencies

* Postgresql

## Guides

A general list of customizations and information about the application.

### Authentication

Registrations accept email addresses and usernames, but a user can sign in with either of them

### Creating a Favicon

This app comes with [Real Favicon Generator](https://realfavicongenerator.net/)
already integrated. Quick edit:

1. Change the options in `config/favicon.json`
2. Replace the image in 'app/assets/images/logo/logo.png'
3. Run `rails generate favicon`

If you've never used Real Favicon Generator, visit the web site and follow the
steps. Skip the part about editing the Gemfile.

### Assets

All stylesheets, javascript and font files are precompiled.

The application layout loads two stylesheet and two javascript files per page:

* `global` (via `application`)
* `controller_name`

The following vendor folders are also precompiled:

* `vendor/assets/javascripts`
* `vendor/assets/stylesheets`
* `vendor/assets/fonts`
