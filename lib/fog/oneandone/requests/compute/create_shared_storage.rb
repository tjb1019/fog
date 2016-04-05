module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Creates a new shared storage
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#shared_storages_post]
        ##
        def create_shared_storage(name: nil, description: nil,
          size: nil, datacenter_id: nil)

          # Build POST body
          new_shared_storage = {
            'name' => name,
            'description' => description,
            'size' => size,
            'datacenter_id' => datacenter_id
          }

          # Clean out null values from POST body
          body = clean_hash(new_shared_storage)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/shared_storages',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_shared_storage(name: nil, description: nil,
          size: nil, datacenter_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog