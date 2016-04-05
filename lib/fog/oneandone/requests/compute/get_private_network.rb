module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a private network
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#private_networks__private_network_id__get]
        ##
        def get_private_network(private_network_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/private_networks/#{private_network_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_private_network(private_network_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog