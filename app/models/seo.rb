class Seo < ApplicationRecord
  include RailsAdmin::SeoAdmin

  validates_presence_of :title, :description
end
