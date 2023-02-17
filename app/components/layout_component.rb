# frozen_string_literal: true

class LayoutComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
