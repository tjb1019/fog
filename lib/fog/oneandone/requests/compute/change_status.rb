module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Change a server's status
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__status_action_put]
        ##
        def change_status(server_id: nil, action: nil, method: nil)
          
          # Build PUT body
          status_specs = {
            'action' => action,
            'method' => method
          }

          # Stringify the PUT body
          string_body = status_specs.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}/status/action",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def change_status(server_id: nil, action: nil, method: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog