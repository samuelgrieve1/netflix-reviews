class ProfilePhotoUploader < CarrierWave::Uploader::Base
  if !Rails.env.test?
    storage :file

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
    
  else
    storage :fog
  end
end
