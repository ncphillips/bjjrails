# frozen_string_literal: true

class StackComponent < ViewComponent::Base
  attr_accessor :gap, :direction

  def initialize(gap: 0, direction: 'vertical')
    @gap = gap
    @direction = direction
  end

  def classes
    ['flex', gap_class, direction_class].join(' ')
  end

  def vertical?
    'vertical' == @direction
  end

  def horizontal
    'horizontal' == @direction
  end

  private

  def direction_class
    vertical? ? 'flex-col' : 'flex-row'
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
