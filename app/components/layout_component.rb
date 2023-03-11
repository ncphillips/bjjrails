# frozen_string_literal: true

class LayoutComponent < ViewComponent::Base
  attr_accessor :title, :user

  def initialize(title: 'bjjrolls.com', user: nil)
    @title = title
    @user = user
  end
end
