# frozen_string_literal: true

class PageBlockComponent < ViewComponent::Base
  attr_accessor :el, :class_name

  def initialize(as: :div, class_name: '')
    @el = as
    @class_name = 'p-4 ' + class_name
  end
end
