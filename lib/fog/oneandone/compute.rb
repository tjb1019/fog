module Fog
  module Compute
    class OneAndOne < Fog::Service

      # Globals
      SUCCESS_CODES = [200, 201, 202]

      # Required Initialization Parameters
      requires :oneandone_api_key

      # Models
      model_path 'fog/oneandone/models/compute'

      model :server
      collection :servers

      model :image
      collection :images

      model :shared_storage
      collection :shared_storages

      model :firewall
      collection :firewalls

      model :load_balancer
      collection :load_balancers

      model :public_ip
      collection :public_ips

      model :private_network
      collection :private_networks

      model :monitoring_policy
      collection :monitoring_policies

      # Requests
      request_path 'fog/oneandone/requests/compute'

      request :list_servers
      request :get_server
      request :create_server
      request :update_server
      request :delete_server
      
      request :list_fixed_servers
      request :get_fixed_server

      request :get_hardware
      request :update_hardware

      request :get_hdds
      request :add_hdds
      request :get_hdd
      request :update_hdd
      request :delete_hdd

      request :get_server_image
      request :install_server_image

      request :list_server_ips
      request :add_server_ip
      request :get_server_ip
      request :delete_server_ip

      request :list_ip_firewalls
      request :add_firewall
      request :remove_firewall

      request :list_ip_load_balancers
      request :add_load_balancer
      request :remove_load_balancer

      request :status
      request :change_status

      request :get_dvd
      request :eject_dvd
      request :load_dvd

      request :list_server_private_networks
      request :get_server_private_network
      request :remove_private_network
      request :add_private_network

      request :create_snapshot
      request :get_snapshot
      request :restore_snapshot
      request :delete_snapshot

      request :clone_server


      request :list_images
      request :create_image
      request :get_image
      request :update_image
      request :delete_image


      request :list_shared_storages
      request :create_shared_storage
      request :get_shared_storage
      request :update_shared_storage
      request :delete_shared_storage

      request :list_shared_storage_servers
      request :get_shared_storage_server
      request :add_shared_storage_servers
      request :remove_shared_storage_server

      request :access
      request :change_password


      request :list_firewalls
      request :get_firewall
      request :create_firewall
      request :update_firewall
      request :delete_firewall

      request :list_firewall_ips
      request :get_firewall_ip
      request :remove_firewall_ip
      request :add_firewall_ips

      request :list_firewall_rules
      request :get_firewall_rule
      request :add_firewall_rules
      request :delete_firewall_rule


      request :list_load_balancers
      request :create_load_balancer
      request :get_load_balancer
      request :update_load_balancer
      request :delete_load_balancer

      request :list_load_balancer_ips
      request :get_load_balancer_ip
      request :remove_load_balancer_ip
      request :add_load_balancer_ips

      request :list_load_balancer_rules
      request :add_load_balancer_rules
      request :get_load_balancer_rule
      request :delete_load_balancer_rule


      request :list_public_ips
      request :create_public_ip
      request :get_public_ip
      request :update_public_ip
      request :delete_public_ip


      request :list_private_networks
      request :create_private_network
      request :get_private_network
      request :update_private_network
      request :delete_private_network

      request :list_private_network_servers
      request :get_private_network_server
      request :remove_private_network_server
      request :add_private_network_servers


      request :list_monitored_servers
      request :get_monitored_server


      request :list_monitoring_policies
      request :get_monitoring_policy
      request :create_monitoring_policy
      request :update_monitoring_policy
      request :delete_monitoring_policy

      request :list_ports
      request :add_ports
      request :get_port
      request :update_port
      request :delete_port

      request :list_processes
      request :add_processes
      request :get_process
      request :update_process
      request :delete_process

      request :list_mp_servers
      request :get_mp_server
      request :remove_mp_server
      request :add_mp_servers


      request :list_logs
      request :get_log


      request :list_usages


      request :list_server_appliances
      request :get_server_appliance


      request :list_dvds
      request :get_dvd_iso

      class Real
        
        def initialize(options = {})

          @oneandone_api_key = options[:oneandone_api_key]
          @base_url = 'https://cloudpanel-api.1and1.com'
          @version = '/v1'
          @header = {
            'X-TOKEN' => @oneandone_api_key,
            'Content-Type' => 'application/json'
          }
          @connection = Fog::Core::Connection.new(@base_url)

        end

        def request(params)

          response = @connection.request(:method => params['method'],
            :path => @version + params['endpoint'],
            :headers => @header,
            :body => params['body'],
            :query => params['params'])

          # Check for server error
          if response.status == 500
            raise "Internal Server Error.  Please try again."
          end

          # Raise exception if a bad status code is received
          if not SUCCESS_CODES.include? response.status
            raise response.body
          end

          response

        end

        def clean_hash(hash)

          hash.each do |key, value|
            if value == nil
              hash.delete(key)
            end
          end

        end

      end # Real

      class Mock

        def self.data
          
          @data ||= Hash.new do |hash, key|
            hash[key] = {
              :servers  => []
            }
          end

        end


        def initialize(options={})
          
          @oneandone_api_key = options[:oneandone_api_key]

        end


        def data

          self.class.data[@oneandone_api_key]

        end


        def reset_data

          self.class.data.delete(@oneandone_api_key)

        end

      end # Mock

    end # OneAndOne
  end # Compute
end # Fog