class DrugSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :frequency, :notes, :patient_id


end
