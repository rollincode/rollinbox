module RailsAdmin::PageAdmin
  extend ActiveSupport::Concern

  included do
    rails_admin do
      navigation_label 'Page'
      navigation_icon 'fa fa-book'
      label_plural 'Pages'
      nestable_tree(position_field: :position,
                    max_depth: 4)

      edit do
        field :title
        field :content, :froala do
          config_options do
            {
              imageUploadURL: '/froala_upload',
              imageUploadParam: 'file',
              imageUploadParams: {
                type: 'image',
                model: 'page',
              },
              fileUploadURL: '/froala_upload',
              fileUploadParam: 'file',
              fileUploadParams: {
                type: 'file',
                model: 'page',
              },
              imageManagerLoadMethod: 'POST',
              imageManagerLoadURL: '/froala_manage',
              imageManagerLoadParams: {
                model: 'page',
                format: 'json',
              },
              imageManagerDeleteMethod: 'DELETE',
              imageManagerDeleteURL: '/froala_delete',
              imageManagerDeleteParams: {
                model: 'page',
                format: 'json',
              },
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
