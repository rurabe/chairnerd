module Chairnerd
  module Venue
    class << self
      def find(params={})
        request = Chairnerd::Client.make_request(:venues,params)
        Response::VenuesResponse.new(*request)
      end

      def find_by_id(venue_id)
        request = Chairnerd::Client.make_request(:venues,venue_id)
        Response::VenueResponse.new(*request)
      end
    end
  end
end