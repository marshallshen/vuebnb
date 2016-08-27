class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :price, :place_type, :image_url
  has_one :host
end
