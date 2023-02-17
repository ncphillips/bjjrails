# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :size, :variant

  def initialize(size: :md, variant: :primary, class_name: '')
    @size = size
    @variant = variant
    @class_name = class_name
  end

  def class_name
    [base_class, size_class, variant_class, @class_name].join(' ')
  end

  private

  def base_class
    'rounded-md border'
  end

  def size_class
    case size
    when :sm
      ''
    when :md
      'px-4 py-1'
    when :lg
      ''
    end
  end

  def variant_class
    case variant
    when :primary
      'text-white bg-black border-black hover:bg-gray-600 hover:border-gray-600 active:bg-gray-700 active:border-gray-700'
    end
  end
end