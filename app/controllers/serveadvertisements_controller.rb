class ServeadvertisementsController < ApplicationController

   def process_request
    response.headers["Access-Control-Allow-Origin"] = "*"

    account_id = get_account_id(params)

    render :json => { newAdvertisement: get_advertisement, accountId: account_id }

   end

   def get_advertisement
    
    return url = 'https://www.elcorteingles.es/sgfm/SGFM/contents/images/uploads/2015/06/556c7139e5dd8e3226b25687.jpg'
  
   end

   private

   def get_account_id(params)

   	params[:accountId]
   	
   end

 end
