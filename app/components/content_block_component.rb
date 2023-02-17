# frozen_string_literal: true

class ContentBlockComponent < ViewComponent::Base
  attr_accessor :class_name

  def initialize(class_name: '')
    @class_name = class_name
  end
end
