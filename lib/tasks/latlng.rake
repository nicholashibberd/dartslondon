namespace :pubs do
  desc 'Update lat lng'
  task update_latlng: :environment do
    Pub.all.each do |pub|
      lat, lng = pub.latlng.split(', ').map(&:to_f)
      pub.update_attributes(lat: lat, lng: lng)
    end
  end
end
