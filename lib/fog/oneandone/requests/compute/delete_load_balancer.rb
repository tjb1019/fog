module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Deletes a load balancer
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers__load_balancer_id__delete]
        ##
        def delete_load_balancer(load_balancer_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/load_balancers/#{load_balancer_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_load_balancer(load_balancer_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog