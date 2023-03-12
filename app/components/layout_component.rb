# frozen_string_literal: true

class LayoutComponent < ApplicationComponent
  attr_accessor :title 

  def initialize(title: 'bjjrolls.com', user: nil)
    @title = title
  end
end
