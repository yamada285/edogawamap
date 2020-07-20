json.array! @maps do |map|
  json.lat map.latitude
  json.lng map.longitude
  json.title map.name
  json.content MapsController.render(partial: 'maps/map',
                                       locals: { map: map }, 
                                       format: :html).squish
end