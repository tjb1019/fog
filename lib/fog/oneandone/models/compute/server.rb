module Fog
  module Compute
    class OneAndOne
      class Server < Fog::Model

        # Globals
        GOOD_STATES = ['POWERED_ON', 'POWERED_OFF']

        # Declare Model Attributes
        identity  :id

        attribute :name
        attribute :description
        attribute :rsa_key
        attribute :fixed_instance_id
        attribute :ram
        attribute :vcore
        attribute :cores_per_processor
        attribute :hdds
        attribute :datacenter
        attribute :datacenter_id
        attribute :creation_date
        attribute :first_password
        attribute :status
        attribute :hardware
        attribute :image
        attribute :appliance_id
        attribute :password
        attribute :power_on
        attribute :firewall_id
        attribute :ip_id
        attribute :load_balancer_id
        attribute :monitoring_policy_id
        attribute :dvd
        attribute :snapshot
        attribute :ips
        attribute :alerts
        attribute :monitoring_policy
        attribute :private_networks

        
        def save

          requires :name, :appliance_id

          # Check for Additional Required Parameters
          if (!fixed_instance_id)
            requires :ram, :vcore, :cores_per_processor, :hdds
          end

          # Perform Request
          response = service.create_server(name: name, description: description,
            rsa_key: rsa_key, fixed_instance_id: fixed_instance_id,
            vcore: vcore, cores_per_processor: cores_per_processor, ram: ram,
            appliance_id: appliance_id, hdds: hdds, datacenter_id: datacenter_id,
            password: password, power_on: power_on, firewall_id: firewall_id,
            ip_id: ip_id, load_balancer_id: load_balancer_id,
            monitoring_policy_id: monitoring_policy_id)

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def update(options = {})

          requires :id

          response = service.update_server(server_id: id, name: options[:name],
            description: options[:description])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def update_hardware(options = {})

          requires :id

          response = service.update_hardware(server_id: id,
            fixed_instance_id: options[:fixed_instance_id],
            vcore: options[:vcore], ram: options[:ram],
            cores_per_processor: options[:cores_per_processor])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def add_hdds(options = {})

          requires :id

          response = service.add_hdds(server_id: id,
            hdds: options[:hdds])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def delete_hdd(options = {})

          requires :id

          response = service.delete_hdd(server_id: id,
            hdd_id: options[:hdd_id])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def resize_hdd(options = {})

          requires :id

          response = service.update_hdd(server_id: id,
            hdd_id: options[:hdd_id], size: options[:size])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def install_image(options = {})

          requires :id

          response = service.install_server_image(server_id: id,
            image_id: options[:image_id], password: options[:password],
            firewall_id: options[:firewall_id])

          # Decode and Merge Attributes
          data = Fog::JSON.decode(response.body)
          merge_attributes(data)

          true

        end


        def destroy

          requires :id

          service.delete_server(id)
          
          true

        end


        def ready?

          (GOOD_STATES.include? status['state']) && (status['percent'] == nil)

        end

      end # Server
    end # OneAndOne
  end # Compute
end # Fog