get '/add_bike' do
	$data.bikes.push({
		owner: "foo",
		type: "mountain",
		status: "stolen"
	})
	redirect "/bikes"
end