module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Modify an image
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#images__image_id__put]
        ##
        def update_image(image_id: nil, name: nil, description: nil,
          frequency: nil)

          # Build PUT body
          new_image = {
            'name' => name,
            'description' => description,
            'frequency' => frequency
          }

          # Clean out null values from PUT body
          body = clean_hash(new_image)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/images/#{image_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_image(image_id: nil, name: nil, description: nil,
          frequency: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog