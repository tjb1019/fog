module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns a list of IPs assigned to a load balancer
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers__load_balancer_id__server_ips_get]
        ##
        def list_load_balancer_ips(load_balancer_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/load_balancers/#{load_balancer_id}/server_ips"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def list_load_balancer_ips(load_balancer_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog