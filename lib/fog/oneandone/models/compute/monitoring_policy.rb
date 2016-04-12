module Fog
  module Compute
    class OneAndOne
      class MonitoringPolicy < Fog::Model

        # Declare Model Attributes
        identity  :id

        attribute :name
        attribute :description
        attribute :email
        attribute :agent
        attribute :thresholds
        attribute :ports
        attribute :processes
        
        attribute :state
        attribute :creation_date
        attribute :servers
        
        
        def save

          requires :name, :agent, :email, :thresholds, :ports, :processes

          # Perform Request
          response = service.create_monitoring_policy(name: name,
            description: description, email: email, agent: agent,
            thresholds: thresholds, ports: ports, processes: processes)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_monitoring_policy(id)
          
          true

        end


        def ready?

          state == 'ACTIVE'

        end

      end # MonitoringPolicy
    end # OneAndOne
  end # Compute
end # Fog