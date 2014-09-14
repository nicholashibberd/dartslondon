class @LatLng
  constructor: (@latlng_string) ->

  google_latlng: ->
    new google.maps.LatLng(@_lat(), @_lng())

  _lat: ->
    @_parse_latlng(0)

  _lng: ->
    @_parse_latlng(1)

  _parse_latlng: (index) ->
    parseFloat(@latlng_string.split(",")[index].trim())
