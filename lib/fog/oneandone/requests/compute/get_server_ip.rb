module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips__ip_id__get]
        ##
        def get_server_ip(server_id: nil, ip_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_server_ip(server_id: nil, ip_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog