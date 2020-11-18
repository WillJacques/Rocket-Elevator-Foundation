class Intervention < ApplicationRecord
    belongs_to :elevator, optional: true
    belongs_to :customer, optional: true
    belongs_to :building, optional: true
    belongs_to :battery, optional: true
    belongs_to :column, optional: true
    belongs_to :employee, optional: true
    after_create :zendesk_intervention
    

    def zendesk_intervention
        client = ZendeskAPI::Client.new do |config|
            
            config.url = "https://wjacques.zendesk.com/api/v2" 
            config.username = "willy321@hotmail.com/token"
            config.token = ENV['zendesk_key']
            config.retry = true
        
            config.raise_error_when_rate_limited = false
        
            require 'logger'
            config.logger = Logger.new(STDOUT)
        end
        usernum = self.author
        usernumber = usernum.to_i
        employeur = Employee.find_by admin_user_id: usernumber
        ZendeskAPI::Ticket.create!(client, :subject => "New Intervention", :comment => { :value => "
            
        \n1- THE REQUESTER #{employeur.display_name}
        \n2- THE CUSTOMER #{self.customer.company_name}
        \n3- THE BUILDING ID #{self.building_id}
        \n4- THE BATTERY ID #{self.battery_id}
        \n5- THE COLUMN ID #{self.column_id}
        \n6- THE ELEVATOR #{self.elevator_id}
        \n7- THE ASSIGNED EMPLOYEE #{self.employee.display_name}
        \n8- THE DESCRIPTION #{self.report}
            
            "}, :submitter_id => client.current_user.id, :priority => "high"
        )
    end
end
