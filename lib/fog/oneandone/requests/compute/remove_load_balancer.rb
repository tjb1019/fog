module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Remove a load balancer from a server's IP
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__ips__ip_id__load_balancers__load_balancer_id__delete]
        ##
        def remove_load_balancer(server_id: nil, ip_id: nil,
          load_balancer_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/ips/#{ip_id}/load_balancers/#{load_balancer_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_load_balancer(server_id: nil, ip_id: nil,
          load_balancer_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog