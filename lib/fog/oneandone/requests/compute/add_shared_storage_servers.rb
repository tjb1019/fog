module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add servers to a shared storage
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#shared_storages__shared_storage_id__servers_post]
        ##
        def add_shared_storage_servers(shared_storage_id: nil, servers: nil)

          # Build POST body
          add_servers = {
            'servers' => servers
          }

          # Stringify the POST body
          string_body = add_servers.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/shared_storages/#{shared_storage_id}/servers",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_shared_storage_servers(shared_storage_id: nil, servers: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog