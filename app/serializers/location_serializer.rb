class SerializableLocation < JSONAPI::Serializable::Resource
  type 'locations'
  attributes :id, :name, :location_type, :iso, :bounds, :area_m2, :perimeter_m, :location_id, :coast_length_m, :geometry
end
