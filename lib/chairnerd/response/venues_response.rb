module Chairnerd
  module Response
    class VenuesResponse < CollectionResponse

      def venues
        @collection
      end
    end
  end
end