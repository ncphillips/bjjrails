# frozen_string_literal: true

class HeadingComponent < ViewComponent::Base
  def initialize(as: nil, size: nil)
    @as = as || "h1"
    @size = size
  end

  def classes
    sizeClass = "text-3xl"

    [sizeClass, 'font-bold'].join(' ')
  end

  


end
