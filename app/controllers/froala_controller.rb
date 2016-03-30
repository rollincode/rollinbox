class FroalaController < ApplicationController
  def upload
    uploader = FroalaUploader.new(params[:model], params[:type])
    uploader.store!(params[:file])

    respond_to do |format|
      format.json { render :json => {status: 'OK', link: uploader.url} }
    end
  end

  def manage
    images = []

    image_path = "uploads/froala/#{params[:model]}/image"
    real_image_path = "#{request.headers['HTTP_ORIGIN']}/uploads/froala/#{params[:model]}/image/"
    path = "#{Rails.root}/public/#{image_path}"

    if File.directory?(path)
      Dir.foreach(path) do |item|
        next if item == '.' or item == '..'
        object = ObjectImage.new
        object.url = real_image_path+item
        object.thumb = real_image_path+item
        object.tag = params[:model]

        images << object
      end
    end

    respond_to do |format|
      format.json { render :json => images }
    end
  end

  private
  class ObjectImage
    attr_accessor :url, :thumb, :tag
  end
end
