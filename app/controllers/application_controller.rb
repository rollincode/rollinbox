class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_layout_data

private

  def load_layout_data
    @seo_title = Parameter.find_by_code('DEFAULT_SEO_TITLE')
    @seo_description = Parameter.find_by_code('DEFAULT_SEO_DESCRIPTION')
    @google_site_verification = SeoTool.find_by_code('GOOGLE_SITE_VERIFICATION_CODE').value
    @google_analytic = SeoTool.find_by_code('GOOGLE_ANALYTIC_CODE').value
    @google_tag_manager = SeoTool.find_by_code('GOOGLE_TAG_MANAGER_CODE').value
  end
end
