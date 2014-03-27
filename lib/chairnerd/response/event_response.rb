module Chairnerd
  module Response
    class EventResponse < Base

      def datetime_local
        DateTime.parse(@response['datetime_local'])
      end

      def url
        @response['url']
      end

      def title
        @response['title']
      end

    end
  end
end