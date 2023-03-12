# frozen_string_literal: true

class StackComponent < ApplicationComponent
  attr_accessor :as, :gap, :direction, :align, :valign

  def initialize(as: :div, gap: 0, direction: :vertical, align: nil, valign: nil, class_name: '')
    @as = as
    @gap = gap
    @direction = direction
    @align = align
    @valign = valign
    @class_name = class_name
  end

  def el
    as
  end

  def class_name
    ['flex', gap_class, direction_class, align_class, valign_class, @class_name].join(' ')
  end

  def vertical?
    :vertical == @direction
  end

  def horizontal?
    :horizontal == @direction
  end

  private

  def direction_class
    vertical? ? 'flex-col' : 'flex-row'
  end

  def align_class
    return align_class_vertical if vertical?
    return align_class_horizontal if horizontal?
  end

  def valign_class
    return valign_class_vertical if vertical?
    return valign_class_horizontal if horizontal?
  end

  def align_class_vertical
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

  def align_class_horizontal
    return '' if align.blank?

    case align
    when :left
      'justify-start'
    when :right
      'justify-end'
    when :center
      'justify-center'
    when :space_between
      'justify-between'
    end
  end

  def valign_class_horizontal
    return '' if valign.blank?

    case align
    when :top
      'items-start'
    when :bottom
      'items-end'
    when :center
      'items-center'
    end
  end

  def valign_class_vertical
    return '' if valign.blank?

    case align
    when :top
      'justify-start'
    when :bottom
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
