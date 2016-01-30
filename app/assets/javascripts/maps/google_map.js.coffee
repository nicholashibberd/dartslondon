class @GoogleMap
  constructor: (@element, @latlngs) ->

  create_map: ->
    @map = new google.maps.Map(
      @_dom_element(), @_map_options()
    )

  fit_bounds: ->
    @create_map()
    latlngBounds = new LatLngBounds(@latlngs).google_latlng_bounds()
    @map.fitBounds(latlngBounds)
    @map

  _initialize_map: ->

  _map_options: ->
    center: @_first_latlng()
    zoom: 15

  _dom_element: ->
    @element[0]

  _first_latlng: ->
    @latlngs[0]
