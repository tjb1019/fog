module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's status
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__status_get]
        ##
        def status(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/status"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def status(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog