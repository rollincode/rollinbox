class FroalaUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/froala/#{model}/#{mounted_as}"
  end
end
