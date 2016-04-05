module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a shared storage
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#shared_storages__shared_storage_id__get]
        ##
        def delete_shared_storage(shared_storage_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/shared_storages/#{shared_storage_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_shared_storage(shared_storage_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog