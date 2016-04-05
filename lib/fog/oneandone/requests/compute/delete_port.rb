module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Remove a monitoring policy's port
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__ports__port_id__delete]
        ##
        def delete_port(monitoring_policy_id: nil, port_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/ports/#{port_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_port(monitoring_policy_id: nil, port_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog