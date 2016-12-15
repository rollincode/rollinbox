module ApplicationHelper
  def title(title)
    content_for(:title) { title }
  end

  def meta_description(meta_description)
    content_for(:meta_description) { meta_description }
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end
end
