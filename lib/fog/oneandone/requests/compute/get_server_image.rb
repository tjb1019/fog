module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's image
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__image_get]
        ##
        def get_server_image(server_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/#{server_id}/image"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_server_image(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog