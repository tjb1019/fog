module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Assigns a private network to the server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__private_networks_post]
        ##
        def add_private_network(server_id: nil, private_network_id: nil)
          
          # Build PUT body
          private_network_specs = {
            'id' => private_network_id
          }

          # Stringify the PUT body
          string_body = private_network_specs.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/private_networks",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_private_network(server_id: nil, private_network_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog