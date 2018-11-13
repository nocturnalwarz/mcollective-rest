require 'rest-client'
require 'json'

module MCollective
  module Agent
    class Rest<RPC::Agent

    	action 'get' do
    		options = {
    			url: request[:url],
    			method: :get
    		}
    		begin
    			response = RestClient::Request.execute(options)
    			reply[:response] = response.body
    		rescue => e
    			reply[:error] = e
    		end
    	end
    end
  end
end
