module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Clone a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__clone_post]
        ##
        def clone_server(server_id: nil, name: nil, datacenter_id: nil)
          
          # Build PUT body
          clone_specs = {
            'name' => name,
            'datacenter_id' => datacenter_id
          }

          # Stringify the PUT body
          string_body = clone_specs.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/clone",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def clone_server(server_id: nil, name: nil, datacenter_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog