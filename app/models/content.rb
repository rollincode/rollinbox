# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  code       :string           not null
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Content < ApplicationRecord
  include RailsAdmin::ContentAdmin

  validates_presence_of :code, :content
  validates_uniqueness_of :code
end
