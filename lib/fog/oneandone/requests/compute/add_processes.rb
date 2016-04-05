module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add new processes to a monitoring policy
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#monitoring_policies__monitoring_policy_id__processes_post]
        ##
        def add_processes(monitoring_policy_id: nil, processes: nil)

          # Build POST body
          new_processes = {
            'processes' => processes
          }

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/monitoring_policies/#{monitoring_policy_id}/processes",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_processes(monitoring_policy_id: nil, processes: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog