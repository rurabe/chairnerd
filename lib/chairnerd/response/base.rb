module Chairnerd
  module Response
    class Base

      class << self
        def simple_parse(*attributes)
          attributes.each do |attribute|
            define_method(attribute) do
              instance_variable_get("@response")[attribute.to_s]
            end
          end
        end
      end
      
      attr_reader :request, :response
      def initialize(request,response)
        @request = request
        @response = response
      end

      private
        def resource
          self.class.to_s.match(/Response::(\w+)Response/)[1].downcase
        rescue
        end

        def plural_resource
          "#{resource}s" if resource
        end

    end
  end
end