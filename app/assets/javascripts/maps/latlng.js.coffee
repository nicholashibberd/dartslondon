class @LatLng
  constructor: (@lat, @lng) ->

  google_latlng: ->
    new google.maps.LatLng(@lat, @lng)
