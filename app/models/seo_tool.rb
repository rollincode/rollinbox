# == Schema Information
#
# Table name: seo_tools
#
#  id         :integer          not null, primary key
#  code       :string           not null
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_seo_tools_on_code  (code) UNIQUE
#

class SeoTool < ActiveRecord::Base
  include RailsAdmin::SeoToolAdmin

end
