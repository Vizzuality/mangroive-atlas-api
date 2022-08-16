json.data do
  json.array! @data do |datum|
    json.year datum.year
    json.indicator 'net_change'
    json.value datum.value - datum.value_prior
  end
end

json.metadata do
  json.location_id @location_id
  json.units do
    json.habitat_extent_area 'km2'
    json.linear_coverage 'km'
  end
  json.year @data.pluck(:year).uniq.sort.reverse
  json.note nil
  json.total_area @total_area
  json.total_lenght @total_lenght
end