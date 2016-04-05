module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server appliance
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#server_appliances__id__get]
        ##
        def get_server_appliance(appliance_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/server_appliances/#{appliance_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_server_appliance(appliance_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog