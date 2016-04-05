module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a monitoring policy's process
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__processes__process_id__put]
        ##
        def update_process(monitoring_policy_id: nil, process_id: nil,
          new_process: nil)
          
          # Build PUT body
          modified_process = {
            'processes' => new_process
          }

          # Stringify the PUT body
          string_body = modified_process.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/processes/#{process_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_process(monitoring_policy_id: nil, process_id: nil,
          new_process: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog