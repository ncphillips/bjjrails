# frozen_string_literal: true

class HeadingComponent < ViewComponent::Base
  attr_accessor :el, :class_name

  def initialize(as: :h1, size: 1, class_name: '')
    @el = as
    @size = size
  end

  def class_name
    [sizeClass, 'font-bold', @class_name].join(' ')
  end

  def size
    @size
  end


  private

  def sizeClass
    case size
    when 1
      'text-3xl'
    when 2
      'text-2xl'
    when 3
      'text-1xl'
    end
  end
end
