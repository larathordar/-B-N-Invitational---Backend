class Athlete::ShowSerializer < ActiveModel::Serializer
  attributes :name, :age, :home, :starttime, :image, :has_raced

  def image
    unless object.image.attachment.nil?
      object.image.service_url(expires_in: 1.hour, disposition: 'inline')
    end
  end
end
