class Location
  include Mongoid::Document

  field :name
  field :lat_long, :type => Array

  index [[:lat_long, Mongo::GEO2D]]
end
