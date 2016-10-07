InitialDataJsonRoute = -> request_helpers do
	params = request_helpers[:params]
	case Auth.permissions(params)
	when :public
		PublicJsonData.call params
	when :user
		UserJsonData.call params
	when :admin
		AdminJsonData.call params
	else
		status 401
		return { errors: ["failed to authenticate"] }.to_json
	end
	$data.to_json
end

PublicJsonData = -> params do
	$data.merge(permissions: "public").to_json
end

UserJsonData = -> params do
	$data.merge(permissions: "user").to_json
end

AdminJsonData = -> params do
	$data.merge(permissions: "admin").to_json
end
