ClientRootHtmlRoute = -> (request_helpers) do
  if Faye::WebSocket.websocket?(request_helpers[:env])
    WebSocketHelpers.root(request_helpers)
  else
		request_helpers[:slim].call :root
	end
end