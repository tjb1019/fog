module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Removes a private network's server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#private_networks__private_network_id__servers__server_id__delete]
        ##
        def remove_private_network_server(private_network_id: nil, server_id: nil)
          
          params = {
            'method' => :delete,
            'endpoint' => "/private_networks/#{private_network_id}/servers/#{server_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def remove_private_network_server(private_network_id: nil, server_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog