module Chairnerd
  class Client
    BASE = "http://api.seatgeek.com/2"
    class << self
      def make_request(endpoint,params={})
        url = build_request(endpoint,params)
        response = get( url )
        [url,parse( response )]
      end

      private

        def build_request(endpoint,params={})
          "#{BASE}/#{endpoint}#{build_params(params)}"
        end

        def build_params(params={})
          case params
          when Hash then "?#{build_query(params)}"
          else "/#{params}"
          end
        end

        def build_query(params={})
          params.map do |k,v|
            case v
            when nil then nil
            when Hash then build_sub_param(k,v)
            when Time then build_query(k => v.iso8601)
            else "#{CGI.escape(k.to_s)}=#{CGI.escape(v.to_s)}"
            end
          end.compact.join("&")
        end

        def build_sub_param(namespace,param={})
          namespaced_params = param.each_with_object({}) do |(subk,subv),h|
            h.merge!("#{namespace}.#{subk}" => subv)
          end
          build_query(namespaced_params)
        end

        def get(url)
          uri = URI(url)
          Net::HTTP.new(uri.host,uri.port).start do |http|
            http.get(uri)
          end
        end

        def parse(response)
          JSON.parse(response.body)
        end
    end
  end
end