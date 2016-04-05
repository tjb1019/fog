module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a load balancer's rule
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers__load_balancer_id__rules__rule_id__get]
        ##
        def get_load_balancer_rule(load_balancer_id: nil, rule_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/load_balancers/#{load_balancer_id}/rules/#{rule_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_load_balancer_rule(load_balancer_id: nil, rule_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog