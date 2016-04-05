module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a monitoring policy's port
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__ports__port_id__put]
        ##
        def update_port(monitoring_policy_id: nil, port_id: nil, new_port: nil)
          
          # Build PUT body
          modified_port = {
            'ports' => new_port
          }

          # Stringify the PUT body
          string_body = modified_port.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/ports/#{port_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_port(monitoring_policy_id: nil, port_id: nil, new_port: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog