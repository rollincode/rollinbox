module RailsAdmin::SeoAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_icon 'fa fa-google'
      parent Content

      edit do
        field :title do
          required true
        end
        field :description do
          required true
        end
        exclude_fields :page
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at
      end
    end
  end
end
