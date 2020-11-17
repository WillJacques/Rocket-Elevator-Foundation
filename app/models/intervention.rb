class Intervention < ApplicationRecord
    belongs_to :elevator, optional: true
    belongs_to :customer, optional: true
    belongs_to :building, optional: true
    belongs_to :battery, optional: true
    belongs_to :column, optional: true
    belongs_to :employee, optional: true
    after_create :zendesk_intervention

    def zendesk_intervention
        # Send support ticket (Zendesk API)
        client = ZendeskAPI::Client.new do |config|
            
            # Mandatory:
    
            config.url = "https://wjacques.zendesk.com/api/v2" # e.g. https://mydesk.zendesk.com/api/v2
        
            # Basic / Token Authentication
            config.username = "willy321@hotmail.com/token"
        
            # Choose one of the following depending on your authentication choice
            config.token = ENV['zendesk_key']
            # config.password = "your zendesk password"
        
            # OAuth Authentication
            # config.access_token = "your OAuth access token"
        
            # Optional:
        
            # Retry uses middleware to notify the user
            # when hitting the rate limit, sleep automatically,
            # then retry the request.
            config.retry = true
        
            # Raise error when hitting the rate limit.
            # This is ignored and always set to false when `retry` is enabled.
            # Disabled by default.
            config.raise_error_when_rate_limited = false
        
            # Logger prints to STDERR by default, to e.g. print to stdout:
            require 'logger'
            config.logger = Logger.new(STDOUT)
        
            # Changes Faraday adapter
            # config.adapter = :patron
        
            # Merged with the default client options hash
            # config.client_options = {:ssl => {:verify => false}, :request => {:timeout => 30}}
        
            # When getting the error 'hostname does not match the server certificate'
            # use the API at https://yoursubdomain.zendesk.com/api/v2
        end
        puts("------------------------")
        puts(self.customer)
        puts(self.id)
        puts("------------------------")
        ZendeskAPI::Ticket.create!(client, :subject => "New Intervention", :comment => { :value => "
            
        \n1- THE REQUESTER
        \n2- THE CUSTOMER
        \n3- THE BUILDING ID #{self.building_id}
        \n4- THE BATTERY ID #{self.battery_id}
        \n5- THE COLUMN ID #{self.column_id}
        \n6- THE ELEVATOR #{self.elevator_id}
        \n7- THE ASSIGNED EMPLOYEE
        \n8- THE DESCRIPTION #{self.report}
            
            "}, :submitter_id => client.current_user.id, :priority => "high"
        )
    end
end
