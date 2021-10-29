class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :image_url

  has_many :drugs

end
