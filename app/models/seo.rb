# == Schema Information
#
# Table name: seos
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Seo < ApplicationRecord
  include RailsAdmin::SeoAdmin

  validates_presence_of :title, :description
end
