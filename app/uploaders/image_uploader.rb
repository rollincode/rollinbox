class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :post_thumb, if: :post? do
    process resize_to_fill: [50, 50]
  end

  version :post, if: :post? do
    process resize_to_fill: [600, 450]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def content_type_whitelist
    /image\//
  end

protected

  def post?(_picture)
    model.is_a?(Post)
  end
end
