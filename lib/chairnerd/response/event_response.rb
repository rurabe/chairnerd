module Chairnerd
  module Response
    class EventResponse < Base

      simple_parse :id, :url, :title

      def datetime_local
        Time.parse(@response['datetime_local'])
      end

      def datetime_utc
        Time.parse(@response['datetime_utc'])
      end

    end
  end
end