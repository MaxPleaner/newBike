$sockets = {
	public: {},
	user: {},
	admin: {}
}

class WebsocketHelpers

	def self.root(request_helpers)
    ws = Faye::WebSocket.new(request_helpers[:env])
    onOpen.call(ws, request_helpers[:params])
    WebsocketHelpers.addOnCloseListener(ws)
    WebsocketHelpers.addOnMessageListener(ws)
    ws.rack_response
  end

  onOpen = -> ws, params do
  	binding.pry
  	# $sockets[Auth.permissions(params)].push()
  end

	def self.addOnCloseListener(ws)
	end
	
	def self.addOnMessageListener(ws)

	end

end