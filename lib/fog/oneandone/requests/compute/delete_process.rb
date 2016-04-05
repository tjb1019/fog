module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Removes a monitoring policy's process
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__processes__process_id__delete]
        ##
        def delete_process(monitoring_policy_id: nil, process_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/processes/#{process_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_process(monitoring_policy_id: nil, process_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog