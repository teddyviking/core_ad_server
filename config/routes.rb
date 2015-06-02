Rails.application.routes.draw do

	get '/advertisements/:account_id' => 'serveadvertisements#process_request'

end
