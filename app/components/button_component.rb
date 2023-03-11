# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :id, :href, :size, :variant

  def initialize(id: '', href: nil, size: :md, variant: :primary, class_name: '')
    @id = id
    @href = href
    @size = size
    @variant = variant
    @class_name = class_name
  end

  def class_name
    [base_class, size_class, variant_class, @class_name].join(' ')
  end

  def el
    if href.present? 
      'a'
    else
      'button'
    end
  end
  private

  def base_class
    'rounded-md border text-base text-center'
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
    when :secondary
      'text-black bg-white border-black hover:bg-gray-100 active:bg-gray-200'
    end
  end
end
