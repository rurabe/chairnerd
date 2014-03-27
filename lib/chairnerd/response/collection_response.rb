module Chairnerd
  module Response
    class CollectionResponse < Base
      def meta
        @response['meta']
      end

    end
  end
end