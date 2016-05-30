module RailsAdmin::ParameterAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent Content
      navigation_label 'Parametre'
      navigation_icon 'fa fa-cog'
      label_plural 'Parametres'

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

    end
  end
end
