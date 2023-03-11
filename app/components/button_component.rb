# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :id, :href, :size, :variant, :type

  def initialize(id: '', href: nil, size: :md, variant: :primary, class_name: '', type: :nil)
    @id = id
    @href = href
    @size = size
    @variant = variant
    @class_name = class_name
    @type = type
  end

  def class_name
    classes = [base_class,  variant_class, @class_name]

    classes << size_class unless ghost?

    classes.join(' ')
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
    'rounded-md border text-center'
  end

  def size_class
    case size
    when :sm
      ''
    when :md
      'px-4 py-1 text-md'
    when :lg
      'px-5 py-2 text-lg'
    when :xl
      'px-6 py-3 text-xl'
    when :xxl
      'px-7 py-4 text-2xl'
    end
  end

  def variant_class
    case variant
    when :primary
      'text-white bg-black border-black hover:bg-gray-600 hover:border-gray-600 active:bg-gray-700 active:border-gray-700'
    when :secondary
      'text-black bg-white border-black hover:bg-gray-100 active:bg-gray-200'
    when :ghost
      'text-black bg-white border-transparent hover:underline'
    end
  end

  def ghost?
    variant == :ghost
  end
end
