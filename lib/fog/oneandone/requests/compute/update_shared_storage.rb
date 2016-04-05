module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a shared storage
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#shared_storages__shared_storage_id__put]
        ##
        def update_shared_storage(shared_storage_id: nil, name: nil,
          description: nil, size: nil)

          # Build PUT body
          new_shared_storage = {
            'name' => name,
            'description' => description,
            'size' => size
          }

          # Clean out null values from PUT body
          body = clean_hash(new_shared_storage)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/shared_storages/#{shared_storage_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_shared_storage(shared_storage_id: nil, name: nil,
          description: nil, size: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog