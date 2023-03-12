# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  attr_accessor :current_user

  def self.new_with_context(ctx, *args, **kwargs)
    component = new(*args, **kwargs)

    component.current_user = ctx[:current_user]

    component
  end
end