module Chairnerd
  class Event
    class << self
      def find(params={})
        request = Chairnerd::Client.make_request(:events,params)
        Response::EventsResponse.new(*request)
      end

      def find_by_id(event_id)
        request = Chairnerd::Client.make_request(:events,event_id)
        Response::EventResponse.new(*request)
      end

    end
  end
end