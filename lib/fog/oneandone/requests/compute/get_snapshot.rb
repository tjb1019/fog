module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's snapshot
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__snapshots_get]
        ##
        def get_snapshot(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/snapshots"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_snapshot(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog