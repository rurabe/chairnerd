module Chairnerd
  module Response
    class CollectionResponse < Base
      def initialize(request,response)
        p response[plural_resource].nil?
        @collection = response[plural_resource].map {|ins| instance_response_class.new(request,ins) }
        super(request,response)
      end

      def meta
        @response['meta']
      end

      private
        def instance_response_class
          Object.const_get("Chairnerd::Response::#{resource.capitalize}Response")
        end

        alias_method :this_class_resource, :resource

        def resource
          plural_resource[0..-2]
        end

        def plural_resource
          this_class_resource
        end


    end
  end
end