module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify a private network
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#private_networks__private_network_id__put]
        ##
        def update_private_network(private_network_id: nil, name: nil,
          description: nil, network_address: nil, subnet_mask: nil)
          
          # Build PUT body
          new_private_network = {
            'name' => name,
            'description' => description,
            'network_address' => network_address,
            'subnet_mask' => subnet_mask
          }

          # Clean out null keys in PUT body
          body = clean_hash(new_private_network)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/private_networks/#{private_network_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_private_network(private_network_id: nil, name: nil,
          description: nil, network_address: nil, subnet_mask: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog