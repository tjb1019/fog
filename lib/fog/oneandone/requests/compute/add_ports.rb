module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add new ports to a monitoring policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__ports_post]
        ##
        def add_ports(monitoring_policy_id: nil, ports: nil)

          # Build POST body
          new_ports = {
            'ports' => ports
          }

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/ports",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_ports(monitoring_policy_id: nil, ports: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog