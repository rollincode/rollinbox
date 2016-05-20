# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  code       :string
#  content    :text             not null
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string
#  slug       :string
#
# Indexes
#
#  index_pages_on_ancestry  (ancestry)
#  index_pages_on_code      (code)
#

class Page < ActiveRecord::Base
  extend FriendlyId
  include RailsAdmin::PageAdmin

  has_one :seo, dependent: :destroy
  has_ancestry
  friendly_id :title, use: :history

  accepts_nested_attributes_for :seo, allow_destroy: true

  def seo_id
    self.seo.try :id
  end

  def draft_id=(id)
    self.seo = Seo.find_by_id(id)
  end
end
