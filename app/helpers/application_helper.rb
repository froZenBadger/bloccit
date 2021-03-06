module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form_group'
    css_class << ' has_error' if errors.any?

    content_tag :div, capture(&block), class: css_class
  end
end
