# frozen_string_literal: true

class ButtonComponent < ApplicationComponent
  attr_accessor :id, :href, :size, :variant, :type, :method

  def initialize(id: '', href: nil, size: :md, variant: :primary, class_name: '', type: :nil, method: nil)
    @id = id
    @href = href
    @size = size
    @variant = variant
    @class_name = class_name
    @type = type
    @method = method
  end

  private

  def render_self
    if button?
      button_to(content, href, html_attributes.merge({ method: method }))
    else
      link_to(content, href, html_attributes)
    end
  end

  def button?
    method == :delete || type == :submit
  end

  def link?
    href.present? && method != :delete
  end

  def html_attributes
    { id: id, type: :type, class: class_name  }
  end

  def class_name
    classes = [base_class,  variant_class, @class_name]

    classes << size_class unless ghost?

    classes.join(' ')
  end

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
      'flex justify-center items-center text-black bg-white border-transparent hover:underline'
    end
  end

  def ghost?
    variant == :ghost
  end
end
