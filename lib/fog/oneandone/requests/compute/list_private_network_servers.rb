module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns a list of a private network's servers
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#private_networks__private_network_id__servers_get]
        ##
        def list_private_network_servers(private_network_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/private_networks/#{private_network_id}/servers"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def list_private_network_servers(private_network_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog