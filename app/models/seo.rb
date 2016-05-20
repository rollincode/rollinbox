# == Schema Information
#
# Table name: seos
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  page_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_seos_on_page_id  (page_id)
#

class Seo < ActiveRecord::Base
  include RailsAdmin::SeoAdmin
  belongs_to :page
end
