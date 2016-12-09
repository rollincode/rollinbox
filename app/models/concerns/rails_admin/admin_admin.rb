module RailsAdmin::AdminAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Admins'
      navigation_icon 'fa fa-user-secret'
      label_plural 'Admins'

      edit do
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at
      end
    end
  end
end
