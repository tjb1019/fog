module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Create a new private network
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#private_networks_post]
        ##
        def create_private_network(name: nil, description: nil,
          network_address: nil, subnet_mask: nil, datacenter_id: nil)
          
          # Build POST body
          new_private_network = {
            'name' => name,
            'description' => description,
            'network_address' => network_address,
            'subnet_mask' => subnet_mask,
            'datacenter_id' => datacenter_id
          }

          # Clean out null keys in POST body
          body = clean_hash(new_private_network)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/private_networks',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_private_network(name: nil, description: nil,
          network_address: nil, subnet_mask: nil, datacenter_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog