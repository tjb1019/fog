module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns a list of a server's IP's
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips_get]
        ##
        def list_ip_load_balancers(server_id: nil, ip_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}/load_balancers"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def list_ip_load_balancers(server_id: nil, ip_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog