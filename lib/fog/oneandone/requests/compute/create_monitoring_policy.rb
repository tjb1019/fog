module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Creates a new monitoring policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies_post]
        ##
        def create_monitoring_policy(name: nil, description: nil, email: nil,
          agent: nil, thresholds: nil, ports: nil, processes: nil)

          # Build POST body
          new_monitoring_policy = {
            'name' => name,
            'description' => description,
            'email' => email,
            'agent' => agent,
            'thresholds' => thresholds,
            'ports' => ports,
            'processes' => processes
          }

          # Clean out null keys in POST body
          body = clean_hash(new_monitoring_policy)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/monitoring_policies',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_monitoring_policy(name: nil, description: nil, email: nil,
          agent: nil, thresholds: nil, ports: nil, processes: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog