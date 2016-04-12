module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Create a new load balancer
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#load_balancers_post]
        ##
        def create_load_balancer(name: nil, description: nil,
          health_check_test: nil, health_check_interval: nil, persistence: nil,
          persistence_time: nil, method: nil, rules: nil,
          health_check_path: nil, health_check_parse: nil, datacenter_id: nil)
          
          # Build POST body
          new_load_balancer = {
            'name' => name,
            'description' => description,
            'health_check_test' => health_check_test,
            'health_check_interval' => health_check_interval,
            'persistence' => persistence,
            'persistence_time' => persistence_time,
            'method' => method,
            'rules' => rules,
            'health_check_path' => health_check_path,
            'health_check_parse' => health_check_parse
          }

          # Clean out null keys in POST body
          body = clean_hash(new_load_balancer)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/load_balancers',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_load_balancer(name: nil, description: nil,
          health_check_test: nil, health_check_interval: nil, persistence: nil,
          persistence_time: nil, method: nil, rules: nil,
          health_check_path: nil, health_check_parse: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog