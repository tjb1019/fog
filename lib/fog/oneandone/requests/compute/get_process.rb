module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a monitoring policy's process
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__processes__process_id__get]
        ##
        def get_process(monitoring_policy_id: nil, process_id: nil)
          
          params = {
            'method' => :get,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/processes/#{process_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_process(monitoring_policy_id: nil, process_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog