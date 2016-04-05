module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a public IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#public_ips__ip_id__get]
        ##
        def get_public_ip(ip_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/public_ips/#{ip_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_public_ip(ip_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog