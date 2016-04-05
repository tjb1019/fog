module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's current hardware configurations
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__hardware_get]
        ##
        def get_hardware(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/hardware"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_hardware(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog