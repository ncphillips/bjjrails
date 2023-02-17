class ActionView::Base
  def method_missing(name, *args, **kwargs, &block)
    begin
      view_class = Object.const_get(name.to_s.camelize + "Component")
    rescue StandardError => e
    end

    if view_class.present?
      render(view_class.send("new", *args, **kwargs), &block)
    else
      super
    end
  end
end
