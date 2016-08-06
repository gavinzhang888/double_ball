require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ssq
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Beijing'
    config.active_record.default_timezone = :local
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.load_path += Dir[Rails.root.join('config','locales', '*.{rb,yml}').to_s]
    config.i18n.available_locales = [:"zh-CN", :en]
    config.i18n.default_locale = :"zh-CN"
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.encoding = "utf-8"

  end
end
