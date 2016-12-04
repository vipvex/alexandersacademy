require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    
    #config.assets.compile = true
    #config.assets.paths << Rails.root.join("assets", "images")
    Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
      config.assets.paths << path
    end
    
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *svg *.js *.css *.scss *ico icons/* paper_backgrounds/* wood_backgrounds/*)
    #config.assets.precompile = ['*.js', '*.css']

    # Enable the asset pipeline
    config.assets.enabled = true
    config.assets.digest = true
    
    # Generators config
    #config.generators do |g|
      
    #end
  end
end
