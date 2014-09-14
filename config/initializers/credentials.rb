begin
  credentials = YAML.load_file(Rails.root.join('config', 'credentials.yml')).with_indifferent_access
rescue Errno::ENOENT
  credentials = {}
end
GOOGLE_MAPS_API_KEY = ENV['GOOGLE_MAPS_API_KEY'] || credentials[:google_maps_api_key]
