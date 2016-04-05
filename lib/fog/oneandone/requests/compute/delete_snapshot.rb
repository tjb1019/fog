module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Removes a snapshot
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__snapshots__snapshot_id__delete]
        ##
        def delete_snapshot(server_id: nil, snapshot_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/snapshots/#{snapshot_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_snapshot(server_id: nil, snapshot_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog