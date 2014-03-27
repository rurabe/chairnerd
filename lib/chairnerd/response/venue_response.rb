module Chairnerd
  module Response
    class VenueResponse < Base
      simple_parse :id, :name, :city, :state, :url
    end
  end
end