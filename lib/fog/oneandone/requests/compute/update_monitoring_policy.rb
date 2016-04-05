module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a monitoring policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__put]
        ##
        def update_monitoring_policy(monitoring_policy_id: nil, name: nil,
          description: nil, email: nil, thresholds: nil)

          # Build PUT body
          modified_mp = {
            'name' => name,
            'description' => description,
            'email' => email,
            'thresholds' => thresholds
          }

          # Clean out null keys in PUT body
          body = clean_hash(modified_mp)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_monitoring_policy(monitoring_policy_id: nil, name: nil,
          description: nil, email: nil, thresholds: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog