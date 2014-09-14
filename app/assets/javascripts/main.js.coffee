jQuery ->
  pub_container = $('#pub-container')

  if pub_container.length
    google_map_container = $('#map_canvas')
    pub_data = pub_container.data('pub')
    latlng = new LatLng(pub_data.latlng).google_latlng()
    map = new GoogleMap(google_map_container, latlng).create_map()
    marker = new MapMarker(map, latlng)
