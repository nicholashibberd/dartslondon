buildMap = (container) ->
  google_map_container = $('#map_canvas')
  region_data = container.data('region')

  pubs = []
  for pub_data in region_data
    pubs.push(
      name: pub_data.name
      latlng: new LatLng(pub_data.lat, pub_data.lng).google_latlng()
    )
  latlngs = (pub.latlng for pub in pubs)
  map = new GoogleMap(google_map_container, latlngs).fit_bounds()

  for pub in pubs
    new MapMarker(map, pub.latlng, pub.name)

jQuery ->
  pub_container = $('#pub-container')

  if pub_container.length
    google_map_container = $('#map_canvas')
    pub_data = pub_container.data('pub')
    latlng = new LatLng(pub_data.lat, pub_data.lng).google_latlng()
    map = new GoogleMap(google_map_container, [latlng]).create_map()
    marker = new MapMarker(map, latlng, pub_data.name)

  region_container = $('#region-container')

  if region_container.length
    buildMap(region_container)

  home_container = $('#home-container')

  if home_container.length
    buildMap(home_container)
