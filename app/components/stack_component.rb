# frozen_string_literal: true

class StackComponent < ViewComponent::Base
  attr_accessor :gap, :direction, :align

  def initialize(gap: 0, direction: :vertical, align: nil, class_name: '')
    @gap = gap
    @direction = direction
    @align = align
    @class_name = class_name
  end

  def class_name
    ['flex', 'w-full', gap_class, direction_class, align_class, @class_name].join(' ')
  end

  def vertical?
    :vertical == @direction
  end

  def horizontal
    :horizontal == @direction
  end

  private

  def direction_class
    vertical? ? 'flex-col' : 'flex-row'
  end

  def align_class
    return vertical_align_class if vertical?
    return horizontal_align_class if horizontal?
  end

  def vertical_align_class
    return '' if align.blank?

    case align
    when :left
      'items-start'
    when :right
      'items-end'
    when :center
      'items-center'
    end
  end

  def horizontal_align_class
    return '' if align.blank?

    case align
    when :left
      'justify-start'
    when :right
      'justify-end'
    when :center
      'justify-center'
    end
  end

  def gap_class
    case gap
    when 0
     'gap-0'
    when 1
     'gap-1'
    when 2
     'gap-2'
    when 3
     'gap-3'
    when 4
     'gap-4'
    when 5
     'gap-5'
    when 6
     'gap-6'
    when 7
     'gap-7'
    when 8
     'gap-8'
    end
  end
end
