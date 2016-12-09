class Content < ApplicationRecord
  include RailsAdmin::ContentAdmin

  validates_presence_of :code, :content
  validates_uniqueness_of :code
end
