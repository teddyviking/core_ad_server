class ServeadvertisementsController < ApplicationController

require "uri"
require "net/http"




   def process_request
	    response.headers["Access-Control-Allow-Origin"] = "*"

	    account_id = get_account_id(params)

	    render :json => { newAdvertisement: get_advertisement(account_id), 
	                      accountId: account_id
	                    }

   end

   def get_advertisement(account_id)

   	   params = {'user_id' => account_id,'button1' => 'Submit'}

       x = Net::HTTP.post_form(URI.parse('//10.28.30.59:3000/metrics'), params)
       puts x.body

	   # if account_id == 1
	   #    url = 'https://www.elcorteingles.es/sgfm/SGFM/contents/images/uploads/2015/06/556c7139e5dd8e3226b25687.jpg'
	   # elsif account_id == 2
	   #    url = 'https://www.elcorteingles.es/sgfm/SGFM/contents/images/uploads/2015/06/556c5b1791fa3d2926078970.jpg'
	   # end   
  
   end

   def ajax
   	  response.headers["Content-Type"] = "application/javascript"
 	
   end

   private

   def get_account_id(params)

    	params[:account_id].to_i
    
   end

 end
