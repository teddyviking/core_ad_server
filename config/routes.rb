Rails.application.routes.draw do

	get '/advertisements/:account_id' => 'serveadvertisements#process_request'

	get '/advertisements/load_js' => 'serveadvertisements#ajax'

end
