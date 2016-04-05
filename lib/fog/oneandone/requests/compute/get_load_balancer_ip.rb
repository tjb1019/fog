module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about an IP assigned to a load balancer
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers__load_balancer_id__server_ips__server_ip__get]
        ##
        def get_load_balancer_ip(load_balancer_id: nil, ip_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/load_balancers/#{load_balancer_id}/server_ips/#{ip_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_load_balancer_ip(load_balancer_id: nil, ip_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog