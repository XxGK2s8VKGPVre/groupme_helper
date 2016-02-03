require 'rest-client'

def get_request(request)
  JSON.parse(RestClient.get(request.url, request.headers))
end