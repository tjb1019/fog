module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Remove a server from a private network
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__private_networks__private_network_id__delete]
        ##
        def remove_private_network(server_id: nil, private_network_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/private_networks/#{private_network_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_private_network(server_id: nil, private_network_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog