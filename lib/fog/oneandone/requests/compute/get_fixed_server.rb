module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a fixed server option
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers_fixed_instance_sizes__fixed_instance_size_id__get]
        ##
        def get_fixed_server(fixed_instance_id)
          
          params = {
            'method' => :get,
            'endpoint' => "/servers/fixed_instance_sizes/#{fixed_instance_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_fixed_server(fixed_instance_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog