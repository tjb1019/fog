module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__get]
        ##
        def get_server(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_server(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog