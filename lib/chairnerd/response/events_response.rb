module Chairnerd
  module Response
    class EventsResponse < CollectionResponse
      def initialize(request,response)
        @collection = response["events"].map {|e| EventResponse.new(request,e) }
        super(request,response)
      end

      def events
        @collection
      end
    end
  end
end