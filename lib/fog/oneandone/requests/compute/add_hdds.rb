module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Add new HDD's to a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__hardware_hdds_post]
        ##
        def add_hdds(server_id: nil, hdds: nil)
          
          # Build POST body
          new_hdds = {
            'hdds' => hdds
          }

          # Stringify the POST body
          string_body = new_hdds.to_json

          # Request
          params = {
            'method' => :post,
            'endpoint' => "/servers/#{server_id}/hardware/hdds",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def add_hdds(server_id: nil, hdds: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog