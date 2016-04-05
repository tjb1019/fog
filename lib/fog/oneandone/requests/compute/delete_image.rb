module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Delete an image
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#images__image_id__delete]
        ##
        def delete_image(image_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/images/#{image_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_image(image_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog