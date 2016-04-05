module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Create a server snapshot
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__snapshots_post]
        ##
        def create_snapshot(server_id)
          
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/snapshots"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_snapshot(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog