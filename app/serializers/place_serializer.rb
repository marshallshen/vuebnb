class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :city, :price, :place_type, :image_url
  has_one :host
end
