# frozen_string_literal: true

class FieldsetComponent < ApplicationComponent
  attr_accessor :class_name

  def initialize(class_name: '')
    @class_name = class_name
  end
end
