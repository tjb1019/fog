module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about the DVD loaded into the virtual DVD unit of a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__dvd_get]
        ##
        def get_dvd(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/dvd"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_dvd(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog