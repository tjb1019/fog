module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a monitoring policy's server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__servers__server_id__get]
        ##
        def get_mp_server(monitoring_policy_id: nil, server_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/servers/#{server_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_mp_server(monitoring_policy_id: nil, server_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog