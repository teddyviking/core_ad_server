Rails.application.routes.draw do

get '/advertisements' => 'serveadvertisements#process_request'

end
