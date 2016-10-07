ClientRoot = -> (request_helpers) do
	request_helpers[:slim].call :root
end