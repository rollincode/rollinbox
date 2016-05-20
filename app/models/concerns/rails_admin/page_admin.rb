module RailsAdmin::PageAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Content'
      navigation_icon 'fa fa-book'
      nestable_tree({
        position_field: :position,
        max_depth: 4,
      })

      edit do
        field :title do
          required true
        end
        field :content, :froala do
          config_options do
            {
              imageUploadURL: '/froala_upload',
              imageUploadParam: 'file',
              imageUploadParams: {
                   type: 'image',
                   model: 'content',
              },
              fileUploadURL: '/froala_upload',
              fileUploadParam: 'file',
              fileUploadParams: {
                   type: 'file',
                   model: 'content',
              },
              imageManagerLoadMethod: 'POST',
              imageManagerLoadURL: '/froala_manage',
              imageManagerLoadParams: {
                   model: 'content',
                   format: 'json'
              }
            }
          end
        end
        field :seo do
          active true
          required true
        end
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at, :content, :position, :ancestry
      end
    end
  end
end
