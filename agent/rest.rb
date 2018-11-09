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

    		response = RestClient::Request.execute(options)

    		reply[:response] = response.body
    	end
    end
  end
end
