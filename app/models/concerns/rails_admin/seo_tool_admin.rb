module RailsAdmin::SeoToolAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Seo Tools'
      label_plural 'Seo Tools'
      navigation_icon 'fa fa-google'
      parent Content


      edit do
        field :value
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at
      end

    end
  end
end
