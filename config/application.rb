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
    begin
      component_name = name.to_s.split('__').map(&:camelize).join('::') + "Component"

      view_class = Object.const_get(component_name)
    rescue StandardError => e
    end

    if view_class.present?
      ctx = { current_user: current_user }

      render(view_class.public_send("new_with_context", ctx, *args, **kwargs), &block)
    else
      super
    end
  end
end
