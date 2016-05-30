module RailsAdmin::ContentAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Content'
      navigation_icon 'fa fa-pencil-square-o'
      label_plural 'Contents'

      edit do
        field :code do
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
      end

      show do
      end

      list do
        exclude_fields :created_at, :updated_at, :content
      end
    end
  end
end
