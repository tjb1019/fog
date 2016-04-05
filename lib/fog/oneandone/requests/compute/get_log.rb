module Fog
  module Compute
    class OneAndOne

      class Real

        ##
        # Returns information about a log
        # URL: [https://cloudpanel-api.1and1.com/documentation/1and1/v1/en/documentation.html#logs__log_id__get]
        ##
        def get_log(log_id)

          # Request
          params = {
            'method' => :get,
            'endpoint' => "/logs/#{log_id}"
          }

          request(params)

        end

      end # Real

      
      class Mock

        def get_log(log_id)
          Fog::Mock.not_implemented
        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog