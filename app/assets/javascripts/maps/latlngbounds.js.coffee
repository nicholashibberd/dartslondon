class @LatLngBounds
  constructor: (@latlngs) ->

  google_latlng_bounds: ->
    latlngbounds = new google.maps.LatLngBounds()
    latlngbounds.extend(latlng) for latlng in @latlngs
    latlngbounds
