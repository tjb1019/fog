module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Ejects a DVD from the virtual DVD unit of a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__dvd_delete]
        ##
        def eject_dvd(server_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/dvd"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def eject_dvd(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog