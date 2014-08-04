class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery, :photo, :abv, :style

end
