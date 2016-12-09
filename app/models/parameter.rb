class Parameter < ApplicationRecord
  include RailsAdmin::ParameterAdmin

  validates_presence_of :code, :value
  validates_uniqueness_of :code
end
