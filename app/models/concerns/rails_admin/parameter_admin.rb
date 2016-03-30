module RailsAdmin::ParameterAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent Content
      navigation_icon 'fa fa-cog'

      edit do
        field :code do
          required true
        end
        field :value do
          required true
        end
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at
      end

      sortable do
        label_method 'code'
        position_method 'row_order'
      end
    end
  end
end
