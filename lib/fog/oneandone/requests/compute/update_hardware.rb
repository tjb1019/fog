module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a server's current hardware configurations
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#servers__server_id__hardware_get]
        ##
        def update_hardware(server_id: nil, fixed_instance_id: nil, vcore: nil,
          cores_per_processor: nil, ram: nil)
          
          # Build PUT body
          hardware_specs = {
            'fixed_instance_size_id' => fixed_instance_id,
            'vcore' => vcore,
            'cores_per_processor' => cores_per_processor,
            'ram' => ram
          }

          # Clean out null keys in PUT body
          body = clean_hash(hardware_specs)

          # Stringify the PUT body
          string_body = body.to_json

          # Request
          params = {
            'method' => :put,
            'endpoint' => "/servers/#{server_id}/hardware",
            'body' => string_body
          }

          request(params)

        end

      end # Real

      
      class Mock

        def update_hardware(server_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog