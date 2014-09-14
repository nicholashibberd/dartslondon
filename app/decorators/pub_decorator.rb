class PubDecorator < Draper::Decorator
  delegate_all

  def to_json
    {
      latlng: pub.latlng,
    }.to_json
  end
end
