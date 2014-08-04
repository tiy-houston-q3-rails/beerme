class BeerSerializer < ActiveModel::Serializer


  embed :ids

  attributes :id, :name, :brewery_id, :photo, :abv, :style


end
