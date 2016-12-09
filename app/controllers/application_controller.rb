class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_layout_data

private

  def load_layout_data
    @seo_title = Parameter.find_by_code('DEFAULT_SEO_TITLE')
    @seo_description = Parameter.find_by_code('DEFAULT_SEO_DESCRIPTION')
  end
end
