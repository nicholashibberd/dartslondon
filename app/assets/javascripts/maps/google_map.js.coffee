class @GoogleMap
  constructor: (@element, @latlng) ->

  create_map: ->
    new google.maps.Map(
      @_dom_element(), @_map_options()
    )

  _initialize_map: ->

  _map_options: ->
    center: @latlng
    zoom: 15

  _dom_element: ->
    @element[0]
