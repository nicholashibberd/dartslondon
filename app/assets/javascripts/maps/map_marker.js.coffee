class @MapMarker
  constructor: (@map, @latlng) ->
    @_initialize_marker()

  _initialize_marker: ->
    new google.maps.Marker(
      position: @latlng
      map: @map
    )
