class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  #version :example, if: :is_example? do
    #process :resize_to_fill => [200, 150]
  #end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
  def content_type_whitelist
    /image\//
  end

  protected
  #def is_example?(picture)
  #  model.kind_of?(ExampleModel)
  #end
end
