class PubDecorator < Draper::Decorator
  delegate_all

  def map_data
    {
      name: pub.name,
      lat: pub.lat,
      lng: pub.lng
    }
  end
end
