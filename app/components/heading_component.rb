# frozen_string_literal: true

class HeadingComponent < ViewComponent::Base
  attr_accessor :class_name

  def initialize(as: nil, size: nil, class_name: '')
    @as = as || "h1"
    @size = size
  end

  def class_name
    sizeClass = "text-3xl"

    [sizeClass, 'font-bold', @class_name].join(' ')
  end

  def size
    @size
  end
end
