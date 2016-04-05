module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a monitoring policy's port
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__ports__port_id__get]
        ##
        def get_port(monitoring_policy_id: nil, port_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/ports/#{port_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_port(monitoring_policy_id: nil, port_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog