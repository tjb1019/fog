module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Removes a server from a shared storage
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#shared_storages__shared_storage_id__servers__server_id__delete]
        ##
        def remove_shared_storage_server(shared_storage_id: nil, server_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/shared_storages/#{shared_storage_id}/servers/#{server_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_shared_storage_server(shared_storage_id: nil, server_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog