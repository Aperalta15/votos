require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Inspinia
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.i18n.default_locale = :es
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.assets.compile = true
    config.assets.precompile += [ 'appviews.css', 'cssanimations.css', 'dashboards.css', 'forms.css', 'gallery.css', 'graphs.css', 'mailbox.css', 'miscellaneous.css', 'pages.css', 'tables.css', 'uielements.css', 'widgets.css', 'commerce.css' ]
    config.assets.precompile += [ 'appviews.js', 'cssanimations.js', 'dashboards.js', 'forms.js', 'gallery.js', 'graphs.js', 'mailbox.js', 'miscellaneous.js', 'pages.js', 'tables.js', 'uielements.js', 'widgets.js', 'commerce.js', 'metrics.js', 'landing.js' ]

    config.to_prepare do
      Devise::SessionsController.layout "empty"
      Devise::PasswordsController.layout "empty"
      Devise::PasswordsController.layout "empty"
      Devise::ConfirmationsController.layout "empty"
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "empty" }
      # Or to configure mailer layout
      # Devise::Mailer.layout "email" # email.haml or email.erb
    end
  end
end
