module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Resize a server's HDD
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__hardware_hdds__hdd_id__put]
        ##
        def update_hdd(server_id: nil, hdd_id: nil, size: nil)

          # Build PUT body
          hdd_specs = {
            'size' => size
          }

          # Stringify the PUT body
          string_body = hdd_specs.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}/hardware/hdds/#{hdd_id}",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_hdd(server_id: nil, hdd_id: nil, size: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog