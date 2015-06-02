Rails.application.routes.draw do

	get '/advertisements/load_js' => 'serveadvertisements#ajax'
	get '/advertisements/:account_id' => 'serveadvertisements#process_request'
end
