json.data do
  json.array! @data do |datum|
    json.indicator datum.indicator
    json.value datum.value
  end
end

json.metadata do
  json.location_id @location_id
  json.note nil
end