class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :notes, :image_url

  has_many :drugs

end
