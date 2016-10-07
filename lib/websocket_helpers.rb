$sockets = {
	public: {},
	user: {},
	admin: {}
}

class WebSocketHelpers

	def self.root(request_helpers)
    ws = Faye::WebSocket.new(request_helpers[:env])
    OnOpen.call(ws, request_helpers[:params])
    WebsocketHelpers.addOnCloseListener(ws)
    WebsocketHelpers.addOnMessageListener(ws)
    ws.rack_response
  end

  OnOpen = -> ws, params do
  	binding.pry
  	# $sockets[Auth.permissions(params)].push()
  end

	def self.addOnCloseListener(ws)
	end
	
	def self.addOnMessageListener(ws)

	end

end