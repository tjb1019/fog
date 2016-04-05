module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Install an image onto a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__image_put]
        ##
        def install_server_image(server_id: nil, image_id: nil, password: nil,
          firewall_id: nil)
          
          # Build PUT body
          image_specs = {
            'id' => image_id,
            'password' => password,
            'firewall_policy' => {
              'id' => firewall_id
            }
          }

          # Clean out null keys in PUT body
          body = clean_hash(image_specs)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}/image",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def install_server_image(server_id: nil, image_id: nil, password: nil,
          firewall_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog