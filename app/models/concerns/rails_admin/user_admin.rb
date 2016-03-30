module RailsAdmin::UserAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Users'
      navigation_icon 'fa fa-user'

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
