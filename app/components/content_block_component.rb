# frozen_string_literal: true

class ContentBlockComponent < ApplicationComponent
  attr_accessor :el, :class_name

  def initialize(as: :div, class_name: '')
    @el = as
    @class_name = class_name
  end
end
