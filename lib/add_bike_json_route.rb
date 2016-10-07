AddBikeJsonRoute = -> (request_helpers) do
	$data.bikes.push({
		owner: "#{Faker::Company.name}",
		type: "mountain",
		status: "stolen"
	})
	request_helpers[:redirect].call "/"
end