module Chairnerd
  module Response
    class EventsResponse < CollectionResponse

      def events
        @collection
      end
    end
  end
end