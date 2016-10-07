AddBike = -> (redirect) do
	$data.bikes.push({
		owner: "foo",
		type: "mountain",
		status: "stolen"
	})
	redirect.call "/bikes"
end