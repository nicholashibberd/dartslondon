class PubDecorator < Draper::Decorator
  delegate_all

  def map_data
    {
      name: pub.name,
      latlng: pub.latlng,
    }
  end
end
