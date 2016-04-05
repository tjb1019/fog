module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Delete a server's HDD
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__hardware_hdds__hdd_id__delete]
        ##
        def delete_hdd(server_id: nil, hdd_id: nil)

          # Request
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}/hardware/hdds/#{hdd_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_hdd(server_id: nil, hdd_id: nil)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog