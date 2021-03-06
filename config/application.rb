require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatSpace
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    I18n.enforce_available_locales = true
    config.active_record.default_timezone = :local
  end
end

module PairsLike
  class Application < Rails::Application
    # ここから下を追加
    config.generators do |g|
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
