AddBike = -> (request_helpers) do
	$data.bikes.push({
		owner: "foo",
		type: "mountain",
		status: "stolen"
	})
	request_helpers[:redirect].call "/bikes"
end