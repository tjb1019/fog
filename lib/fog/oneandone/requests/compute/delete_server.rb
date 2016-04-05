module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Deletes a server
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__delete]
        ##
        def delete_server(server_id)
          
          params = {
            'method' => :delete,
            'endpoint' => "/servers/#{server_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def delete_server(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog