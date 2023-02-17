require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bjjrails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

class ActionView::Base
  def method_missing(name, *args, **kwargs, &block)
    view_class = Object.const_get(name.to_s.camelize + "Component")

    render(view_class.send("new", *args, **kwargs), &block)
  rescue StandardError => e
    super(name, *args, **kwargs, &block)
  end
end
