module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Update a server's specs
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__put]
        ##
        def update_server(server_id: nil, name: nil, description: nil)
          
          # Build PUT body
          server_specs = {
            'name' => name,
            'description' => description
          }

          # Clean out null keys in PUT body
          body = clean_hash(server_specs)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_server(server_id: nil, name: nil, description: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog