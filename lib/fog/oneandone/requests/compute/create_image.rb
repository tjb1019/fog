module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Creates a new image
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#images_post]
        ##
        def create_image(server_id: nil, name: nil, description: nil,
          frequency: nil, num_images: nil)

          # Build POST body
          new_image = {
            'server_id' => server_id,
            'name' => name,
            'description' => description,
            'frequency' => frequency,
            'num_images' => num_images
          }

          # Clean out null values from POST body
          body = clean_hash(new_image)

          # Stringify the POST body
          string_body = body.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => '/images',
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def create_image(server_id: nil, name: nil, description: nil,
          frequency: nil, num_images: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog