class @MapMarker
  constructor: (@map, @latlng, @label) ->
    @_initialize_marker()

  _initialize_marker: ->
    marker = new google.maps.Marker(
      position: @latlng
      map: @map
    )
    marker.addListener('click', => @_infoWindow().open(@map, marker))

  _infoWindow: ->
    new google.maps.InfoWindow(
      content: @label
    )
