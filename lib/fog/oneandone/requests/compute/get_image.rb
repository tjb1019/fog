module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about an image
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#images__image_id__get]
        ##
        def get_image(image_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/images/#{image_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_image(image_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog