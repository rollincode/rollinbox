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
# Indexes
#
#  index_contents_on_code  (code) UNIQUE
#

require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
