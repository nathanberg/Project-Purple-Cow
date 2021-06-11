class Counter < ApplicationRecord
  def self.get_count
    (Counter.count == 0) ? counter = Counter.new : counter = Counter.first
    uri = URI('https://api.countapi.xyz/hit/fearless.tech/1ccb732e-b55a-4404-ad3f-0f99c02fe44e')

    # Create client
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # Create Request
    req = Net::HTTP::Get.new(uri)
    # Add headers
    req.add_field "Content-Type", "application/json; charset=utf-8"

    # Fetch Request
    res = http.request(req)
    counter.last_known_count = JSON.parse(res.body)['value'].to_i
    counter.save
    return counter
  end
end
